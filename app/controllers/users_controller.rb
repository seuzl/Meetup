class UsersController < ApplicationController
  def signup
  	 @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        cookies[:auth_token] = @user.auth_token
        redirect_to :root
      else
        render :signup
      end
    end

def create_login_session
  user = User.find_by_name(params[:name])
  if user && user.authenticate(params[:password])
  session[:user_id] = user.id
  flash.notice = "登陆成功！"
    redirect_to :root
  else
    flash.notice = "用户名密码错误!"
    redirect_to :login
  end
end
  
def logout
  session[:user_id] = nil
  redirect_to :root
end

private
  def user_params
    params.require(:user).permit!
  end

end
