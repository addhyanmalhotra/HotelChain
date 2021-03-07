json.extract! guest, :id, :member_id, :branch_id, :r_no, :check_in, :check_out, :billed_amount, :created_at, :updated_at
json.url guest_url(guest, format: :json)
