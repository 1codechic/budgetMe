class Expense < ApplicationRecord
  #belongs_to :user
  #belongs_to :category

  validates :amount, presence: true
  #validates :amount, numercality: true

  #validates :category_name, presence: true


  def category_name=(name)
    self.category = Category.find_or_create_by(name: name)
    self.save
  end

  
end
