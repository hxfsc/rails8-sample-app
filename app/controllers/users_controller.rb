class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[edit update]
  before_action :correct_user, only: %i[edit update]


  def index
    @pagy,  @users = pagy(:offset, User.all)
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
      flash[:success]="新用户新建成功"
      redirect_to @user
    else
      flash.now[:danger]= "新建用户失败"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
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
    def user_params
      params.expect(user: %w[name email password password_confirmation])
    end


    def logged_in_user
      unless logged_in?
        flash[:danger]="请先登录"
        redirect_to login_url
      end
    end


    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless @user == current_user
    end
end
