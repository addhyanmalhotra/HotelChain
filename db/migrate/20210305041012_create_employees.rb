class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email_id
      t.date :dob
      t.date :join_date
      t.float :salary
      t.integer :category_id

      t.timestamps
    end
  end
end
