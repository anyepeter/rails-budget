json.extract! expenditure, :id, :name, :amount, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
