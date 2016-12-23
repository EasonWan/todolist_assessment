class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id]= user.id 
      # Log the user in and redirect to the index's show page.
    redirect_to '/lists'
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end
end
