class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :r_no
      t.string :type
      t.float :tarrif
      t.integer :occupancy
      t.bigint :branch_id

      t.timestamps
    end
  end
end
