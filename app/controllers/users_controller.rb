class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy]
  before_action :correct_user, only: %i[edit update]
  before_action :admin_user, only: :destroy



  def following
    @title = "收听"
    @user = User.find(params[:id])
    @pagy, @users = pagy(@user.following)
    render "show_follow"
  end

  def followers
    @title = "正在听"
    @user = User.find(params[:id])
    @pagy, @users = pagy(@user.followers)
    render "show_follow"
  end

  def index
    @pagy,  @users = pagy(:offset, User.where(activated: true).all)
  end



  def new
    @user = User.new
  end


  def edit
      @user = User.find(params[:id])
  end

  def create
    @user = User.new user_params
    if @user.save
      @user.send_activation_email
      flash[:info]="请确认邮箱"
      redirect_to @user
    else
      flash.now[:danger]= "新建用户失败"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if !@user.activated
      flash[:warning] = "当前用户未激活"
      redirect_to root_path
    end

    @pagy, @microposts = pagy(:offset, @user.microposts)
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "更新成功"
      redirect_to @user
    else
      flash.now[:danger] = "更新失败"
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "用户删除成功"
    redirect_to root_path
  end

  private
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end


    def user_params
      params.expect(user: %w[name email password password_confirmation])
    end



    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless @user == current_user
    end
end
