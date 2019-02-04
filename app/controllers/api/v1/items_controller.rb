class Api::V1::ItemsController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    render json: Item.all
  end

  def show
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
end
