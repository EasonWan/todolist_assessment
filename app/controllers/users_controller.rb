class UsersController < ApplicationController
  
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.save
      redirect_to root_path, :notice =>"You have signed up successfully"
    else  
      puts "LOG: #{@user.errors.full_messages}"
      redirect_to '/'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
