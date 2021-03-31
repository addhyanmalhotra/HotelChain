class Room < ApplicationRecord
  validates :r_no, uniqueness: {scope: :branch_id}
end
