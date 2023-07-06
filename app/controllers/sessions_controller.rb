class SessionsController < ApplicationController
   skip_before_action :verify_authenticity_token

   def create #POST /login
    user= User.find_by(email:params[:email])
    if user&.authenticate(params[:password])
      render json: user
    else
      render json: {errors:["Wrong email or password"]}
    end
  end
  
end
