json.extract! employee, :id, :first_name, :last_name, :phone_number, :email_id, :dob, :join_date, :salary, :category_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
