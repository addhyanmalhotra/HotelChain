json.extract! hotel, :id, :branch_name, :manager_id, :stars, :street_address, :city, :country, :pincode, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
