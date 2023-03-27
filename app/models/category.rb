class Category < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :expenditures, through: :category_expenditures
    has_many :category_expenditures

    validates :name, presence: true
    validates :icon, presence: true 
end
