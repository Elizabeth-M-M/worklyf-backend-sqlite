class ProfilesController < ApplicationController
  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_profile_credentials

  def update #PATCH /profiles/:id
    user= User.find(params[:id])
    profile= user.profile
    profile.update!(profile_params)
    render json: profile
  end

  def show #GET /profiles/:id
  user= User.find(params[:id])
  profile= user.profile
  render json: profile
  end

  private

  def profile_params
    params.permit(:gender, :age, :occupation, :full_name)
  end

  def invalid_profile_credentials(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
