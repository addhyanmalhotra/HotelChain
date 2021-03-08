class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.integer :member_id
      t.integer :branch_id
      t.integer :r_no
      t.date :check_in
      t.date :check_out
      t.float :billed_amount

      t.timestamps
    end
  end
end
