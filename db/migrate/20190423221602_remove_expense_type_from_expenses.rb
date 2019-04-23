class RemoveExpenseTypeFromExpenses < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :expense_type, :string
  end
end
