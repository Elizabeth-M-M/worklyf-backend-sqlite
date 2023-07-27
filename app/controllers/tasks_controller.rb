class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_task_params
  rescue_from ActiveRecord::RecordNotFound, with: :task_not_found

  def index #GET /users/:user_id/tasks
    user= find_user
    tasks= user.tasks.order('start_date ASC')
    render json: tasks
  end

  def show #GET /tasks/:id
    task= find_task
    render json: task
  end

  def create #POST /users/:user_id/tasks
    user= find_user
    task = Task.create!(task_params)
    user.tasks<<task
    render json: task
  end

  def destroy #DELETE /tasks/:id
    task= find_task
    task.destroy
    head :no_content
  end

  def update #PATCH /tasks/:id
    task= find_task
    task.update!(task_params)
    render json: task
  end

  private

  def find_user
    User.find(params[:user_id])
  end

  def find_task
    Task.find(params[:id])
  end

  def task_params
    params.permit(:group_id, :category_id, :user_id, :description, :end_date, :start_date, :label, :status, :reminder, :title, :start_time, :end_time)
  end

  def task_not_found
    render json: {errors:["Task not found"]}, status: :not_found
  end

  def invalid_task_params(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

end
