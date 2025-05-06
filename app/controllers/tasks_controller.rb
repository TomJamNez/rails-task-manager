class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new( params.require(:task).permit(:title, :details))
    @task.save
    redirect_to tasks_path
  end

end
