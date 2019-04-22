class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :date
      t.string :amount
      t.string :notes
      t.string :type

      t.timestamps
    end
  end
end
