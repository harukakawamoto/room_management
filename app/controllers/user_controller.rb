class UserController < ApplicationController
  layout false
  before_action :confirmation , except: :login 
  
  def index
  end

  def login
    @user_name = params[:user_name]
    @password = params[:password]
    @user = User.find_by(name:@user_name, password:@password)
    if @user
      session[:user_id] = @user.id
      session[:user_admin] = @user.admin
      flash[:notice] = "ログインしました"
      redirect_to("/user/#{@user.id}")
    elsif @user_name != nil and @password != nil
      flash[:notice] = "ユーザー名かパスワードが異なります"
      render('/user/index')
    else
      flash[:notice] = "ログインしてください"
      render('/user/index')
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:user_admin] = nil
    flash[:notice] = "ログアウトしました"
    render('/user/index')
  end
  

end
