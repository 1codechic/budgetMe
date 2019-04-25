class Api::ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
    render 'index.json.jbuilder'
  end

  def create
    @expense = Expense.create!(
      # name: params[:name],
      date: params[:date],
      amount: sprintf("%2.2f", params[:amount]),
      category_id: params[:category_id],
      notes: params[:notes],
      user_id: current_user.id
      )
      render 'show.json.jbuilder'
    # if @expense.save
    #   render 'show.json.jbuilder'
    # else
    #   #console.log('error')
    #   # render json: {errors: @expense.errors.full_message}, status: :unprocessable_entity
    # end
  end

  def show
    @expense = Expense.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @expense = Expense.find(params[:id])

    #@expense.name = params[:name] || @expense.name
    @expense.date = params[:date] || @expense.date
    @expense.amount = sprintf("%2.2f", params[:amount]) || sprintf("%2.2f", params[:amount])
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

  # private
  #Use callbacks to share common setup or contrainsts between actions

  # def expense_params
  #   params.require(:expense).permit(:id, :date, :notes, :amount)
  # end

end
