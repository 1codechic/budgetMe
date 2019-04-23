class RenameTypeColumnInExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_column :expenses, :type, :expense_type
  end
end
