class Category < ApplicationRecord
  has_many :expenses
  has_many :users, through: :expenses

  # validates :name, uniqueness: true
  # validates :name, presence: true

  def total
    self.expenses.sum(:amount)
  end
end
