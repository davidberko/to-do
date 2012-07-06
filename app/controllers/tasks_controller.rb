class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end
  
  def new
    @tasks = Task.new
  end
  
  def create
    @tasks = Task.create(params[:task])
    if @tasks.save
      redirect_to tasks_path
    else
      "new"
    end
  end
end
