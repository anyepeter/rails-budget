class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_expenditures
  has_many :expenditures, through: :category_expenditures
  

  validates :name, presence: true
  validates :icon, presence: true

  def sumOfexpenditures(x)
     sum = 0 
     x.each do |expenditure| 
     sum += expenditure.amount 
    end 
   sum
  end
end
