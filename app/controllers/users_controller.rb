class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_credentials

  def show #GET /users/:id
    user= User.find(params[:id])
    render json: user
  end

  def create #POST /signup
    user= User.create!(user_params)
    profile = Profile.create!(user_id:user.id, full_name:params[:full_name])
    render json: user
  end
   def destroy #DELETE /users/:id
    user= User.find(params[:id])
    user.destroy
    head :no_content
   end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end

  def invalid_user_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
