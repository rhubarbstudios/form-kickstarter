module Api
  class UsersController < ApplicationController
    protect_from_forgery with: :null_session

    def index
      users = User.all
      render json: users
    end

    def create
      user = User.new(user_params)
      if user.save
        render json: user, status: 201
      else
        render json: { errors: user.errors }, status: 422
      end
    end

    def update
      user = User.find(params[:id])
      if user.update_attributes(user_params)
        render json: user, status: 200
      else
        render json: { errors: user.errors }, status: 422
      end
    end

    def destroy
      user = User.find(params[:id]).destroy
      head 204
    end


    private

    def user_params
      params.require(:user).permit(:email, :ip_address, :referral_code, :referrer_id, :location_details)
    end

  end
end