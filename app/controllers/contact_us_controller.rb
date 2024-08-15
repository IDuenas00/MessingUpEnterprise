class ContactUsController < ApplicationController
  def index
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to login_path, notice: 'Registration was successful. Please log in.'
    else
      flash.now[:alert] = 'There was an error with your registration.'
      render :index
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation)
  end
end
