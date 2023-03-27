require 'rails_helper'

RSpec.describe 'expenditures/show', type: :view do
  before(:each) do
    assign(:expenditure, Expenditure.create!(
                           name: 'Name',
                           amount: 2.5
                         ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
