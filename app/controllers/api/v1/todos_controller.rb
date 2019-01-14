class Api::V1::TodosController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    render json: Todo.all
  end
end
