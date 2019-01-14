class Api::V1::ItemsController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    render json: Item.all
  end
end
