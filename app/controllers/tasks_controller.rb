class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    Task.create(title: params[:task][:title])
    redirect_to tasks_path
  end

  def new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(title: params[:task][:title])
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
