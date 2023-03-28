class Expenditure < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_expenditures
  has_many :categories, through: :category_expenditures

  validates :name, presence: true
  validates :amount, presence: true

  def self.sum_for_category(category_id)
    joins(:categories).where(categories: { id: category_id }).sum(:amount)
  end
end
