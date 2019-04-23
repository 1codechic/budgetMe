class Api::BudgetsController < ApplicationController

  def index
    @budgets = Budget.all
    render 'index.json.jbuilder'
  end

  def create
    budget = Budget.new(
      name: params[:category_name],
      amount: params[:amount]
      )
    if budget.save
      render json: {message: 'budget created successfully'}, status: :created
    else
      render json: {errors: budget.errors.full_message}, status: :bad_request
    end
  end

  def show
    @budget = budget.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def destroy
    budget_id = params[:id]
    @budget = budget.find_by(id: budget_id)
    @budget.destroy
    render json: {message: 'budget deleted'}
  end


end
