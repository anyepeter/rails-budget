class CategoryExpenditure < ApplicationRecord
  belongs_to :expenditure
  belongs_to :category
end
