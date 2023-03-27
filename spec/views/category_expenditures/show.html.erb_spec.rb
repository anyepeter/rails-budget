require 'rails_helper'

RSpec.describe 'category_expenditures/show', type: :view do
  before(:each) do
    assign(:category_expenditure, CategoryExpenditure.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
