class UsersController < ApplicationController
  def index
    @users = User.all
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


  private
    def user_params
      params.expect(user: %w[name email password password_confirmation])
    end
end
