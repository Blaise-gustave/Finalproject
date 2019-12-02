json.extract! company, :id, :company_name, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
