class Api::V1::TodosController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    render json: Todo.all
  end

  def create
    @todo = Todo.create(todo_params)
    if @todo.valid?
      render json: { todo: TodoSerializer.new(@todo) }, status: :created
    else
      render json: { error: 'failed to create todo' }, status: :not_acceptable
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render 'deleted todo'
  end

  private

  def todo_params
    params.require(:todo).permit(:id, :user_id, :item_id)
  end
end
