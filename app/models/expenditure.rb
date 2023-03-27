class Expenditure < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories, through: :category_expenditures
  has_many :category_expenditures

  validates :name, presence: true
  validates :amount, presence: true
end
