require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  before(:all) do
    @User_one = User.new(name: 'peter anye', email: 'peter@gmail.com', password:12345678, password_confirmation: 12345678)
    @category = Category.new(author: @User_one, name: 'contruction',
     icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
     @expenditue = Expenditure.new(author:@User_one, name:'fundation', amount:345)
  end 
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@expenditue).to be_valid
    end
    it 'is not valid without a name' do
      @expenditue.name = ' '
      expect(@expenditue).to_not be_valid
    end
    it 'Is should valid the post counter' do
      @expenditue.amount = ' '
      expect(@expenditue).to_not be_valid
    end
  end

end
