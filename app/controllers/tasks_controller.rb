class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
    @tasks = Task.find(params[:list][:task])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:name)
  end

end
