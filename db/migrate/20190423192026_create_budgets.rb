class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :category
      t.string :amount

      t.timestamps
    end
  end
end
