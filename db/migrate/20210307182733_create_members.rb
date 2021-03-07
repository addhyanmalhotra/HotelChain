class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.bigint :member_id
      t.integer :tier
      t.string :first_name
      t.string :last_name
      t.string :email
      t.bigint :contact_number
      t.integer :loyalty_points

      t.timestamps
    end
  end
end
