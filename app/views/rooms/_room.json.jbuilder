json.extract! room, :id, :r_no, :type, :tarrif, :occupancy, :branch_id, :created_at, :updated_at
json.url room_url(room, format: :json)
