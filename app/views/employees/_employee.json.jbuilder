json.extract! employee, :id, :username, :password, :created_at, :updated_at
json.url employee_url(employee, format: :json)
