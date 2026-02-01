class SessionsController < ApplicationController
  layout false
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        flash[:success]="欢迎回来， #{user.name}."
        log_in user
        params[:session][:remember_me] =="1" ? remember(user) : forget(user)
        redirect_to user
      else
        flash[:warning]="请先激活后再登录"
        redirect_to root_path
      end
    else
      flash.now[:danger] = "登录失败，请重新登录"
      render :new
    end
  end


  def destroy
    log_out if logged_in?
    flash[:success] = "你已退出"
    redirect_to root_path
  end

  private

    def sessions_params
      params.expect(:sessions, %w[email password])
    end
end
