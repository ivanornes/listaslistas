class SessionsController < ApplicationController
skip_before_filter :authorize
  def new
  end

  def create
	if usuario = Usuario.authenticate(params[:nombre], params[:password])
		session[:usuario_id] = usuario.id
		redirect_to admin_url
	else
		redirect_to login_url, :alert => "Invalid user/password combination"
	end
  end

  def destroy
	session[:usuario_id] = nil
	redirect_to homes_url, :notice => "Logged out"
  end

end
