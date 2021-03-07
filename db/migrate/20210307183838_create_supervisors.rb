class CreateSupervisors < ActiveRecord::Migration[6.1]
  def change
    create_table :supervisors do |t|
      t.bigint :emp_id
      t.string :department

      t.timestamps
    end
  end
end
