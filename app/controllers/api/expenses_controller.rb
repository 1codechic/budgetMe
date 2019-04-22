class Api::ExpensesController < ApplicationController

    def index
    @expenses = Expense.all
    render 'index.json.jbuilder'
  end

  def create
    expense = Expense.new(
      name: params[:name],
      date: params[:date],
      amount: params[:amount],
      type: params[:type],
      notes: params[:notes]
      )
    if expense.save
      render json: {message: 'expense created successfully'}, status: :created
    else
      render json: {errors: expense.errors.full_message}, status: :bad_request
    end
  end

  def show
    @expense = expense.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def destroy
    expense_id = params[:id]
    @expense = expense.find_by(id: expense_id)
    @expense.destroy
    render json: {message: 'expense deleted'}
  end

end
