class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses

  validates :name, uniqueness: true
  validates :name, presence: true

  def total
    self.expenses.sum(:amount)
  end
end
