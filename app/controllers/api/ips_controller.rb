module Api
  class IpsController < ApplicationController
    def index
      ip_addresses = IpAddress.all
      render json: ip_addresses
    end

    def show
      ip_address = IpAddress.find(params[:id])
      render json: ip_address
    end

    def update
      ip_address = IpAddress.find(params[:id])
      if ip_address.update_attributes(:count => params[:count])
        render json: ip_address, status: 200
      else
        render json: { errors: ip_address.errors }, status: 422
      end
    end

  end
end