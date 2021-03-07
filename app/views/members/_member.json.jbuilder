json.extract! member, :id, :member_id, :tier, :first_name, :last_name, :email, :contact_number, :loyalty_points, :created_at, :updated_at
json.url member_url(member, format: :json)
