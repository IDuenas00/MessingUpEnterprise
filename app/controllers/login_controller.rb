class LoginController < ApplicationController
  def new
  end

  def create
    registration = Registration.find_by(email: params[:session][:email])
    if registration && registration.authenticate(params[:session][:password])
      session[:registration_id] = registration.id
      redirect_to customerview_path
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:registration_id] = nil
    redirect_to root_path
  end
end
