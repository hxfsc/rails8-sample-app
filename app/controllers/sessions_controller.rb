class SessionsController < ApplicationController
  layout false
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash.now[:success]="欢迎回来， #{user.name}."
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "登录失败，请重新登录"
      render :new
    end
  end


  def destroy
    flash.now[:success] = "你已退出"
    log_out
    redirect_to root_path
  end

  private

    def sessions_params
      params.expect(:sessions, %w[email password])
    end
end
