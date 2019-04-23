class RemoveDateFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :date, :string
  end
end
