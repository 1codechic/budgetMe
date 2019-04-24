class Api::ExpensesController < ApplicationController

    def index
    @expenses = Expense.all
    render 'index.json.jbuilder'
  end

  def create
    @expense = Expense.new(
      name: params[:name],
      date: params[:date],
      amount: params[:amount],
      expense_type: params[:expense_type],
      notes: params[:notes]
      )
    if @expense.save
      render json: {message: 'expense created successfully'}, status: :created
    else
      render json: {errors: expense.errors.full_message}, status: :bad_request
    end
  end

  def show
    @expense = Expense.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @expense = Expense.find(params[:id])

    @expense.name = params[:name] || @expense.name
    @expense.date = params[:date] || @expense.date
    @expense.amount = params[:amount] || @expense.amount
    @expense.notes = params[:notes] || @expense.notes

    if @expense.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @expense.errors.full_message}, status: :unprocessable_entity
    end
  end

  def destroy
    expense_id = params[:id]
    @expense = expense.find_by(id: expense_id)
    @expense.destroy
    render json: {message: 'expense deleted'}
  end

end
