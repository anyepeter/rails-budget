require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @User_one = User.new(name: 'peter anye', email: 'peter@gmail.com', password:12345678, password_confirmation: 12345678)
    @category = Category.new(author: @User_one, name: 'contruction',
     icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
  end 
  context 'validations' do
    it 'Create a new category' do
      expect(@category).to be_valid
    end
    it 'Invalid since the name is nil' do
      @category.name = ' '
      expect(@category).to_not be_valid
    end
    it 'Invalid since the icon is nil' do
      @category.icon = ' '
      expect(@category).to_not be_valid
    end
  end
end
