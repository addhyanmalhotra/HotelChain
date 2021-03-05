class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.integer :branch_id
      t.string :branch_name
      t.integer :manager_id
      t.integer :stars
      t.string :street_address
      t.string :city
      t.string :country
      t.integer :pincode
      t.timestamps
    end
  end
end
