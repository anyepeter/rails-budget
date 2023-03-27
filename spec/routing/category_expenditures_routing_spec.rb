require 'rails_helper'

RSpec.describe CategoryExpendituresController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/category_expenditures').to route_to('category_expenditures#index')
    end

    it 'routes to #new' do
      expect(get: '/category_expenditures/new').to route_to('category_expenditures#new')
    end

    it 'routes to #show' do
      expect(get: '/category_expenditures/1').to route_to('category_expenditures#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/category_expenditures/1/edit').to route_to('category_expenditures#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/category_expenditures').to route_to('category_expenditures#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/category_expenditures/1').to route_to('category_expenditures#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/category_expenditures/1').to route_to('category_expenditures#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/category_expenditures/1').to route_to('category_expenditures#destroy', id: '1')
    end
  end
end
