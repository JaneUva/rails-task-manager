class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # to display the form to create the restaurant
  end

  def create
    # raise
    task = Task.create(task_params)
    # we create new task by completing the form with passing permitted params
    redirect_to tasks_path(task)
    # then we redirect user to another page after he clicks submit
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to tasks_path(@task)

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
    # parameters that we require for our form task permit only the following inputs!
    # so basically when you write this code inside console on raise - you will see permited changed  to true from false
  end

end
