class AddCategoryIDandUserIdToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :category_id, :integer
    add_column :expenses, :user_id, :integer
  end
end
