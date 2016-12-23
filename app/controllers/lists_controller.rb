class ListsController < ApplicationController

  def index
    @list = List.all
  end

  def new
    @list = List.new
  end
    
  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, :notice =>"You have signed up successfully"
    else  
      puts "LOG: #{@user.errors.full_messages}"
      redirect_to '/list'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def list_params
    params.require(:list).permit(:title, :user_id)
  end

end
