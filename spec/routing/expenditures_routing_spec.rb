require 'rails_helper'

RSpec.describe ExpendituresController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/categories/1/expenditures').to route_to('expenditures#index', category_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/categories/1/expenditures/new').to route_to('expenditures#new', category_id: '1')
    end

    it 'routes to #create' do
      expect(post: '/categories/1/expenditures').to route_to('expenditures#create', category_id: '1')
    end
  end
end
