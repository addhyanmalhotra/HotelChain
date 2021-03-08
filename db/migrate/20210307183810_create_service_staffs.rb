class CreateServiceStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :service_staffs do |t|
      t.bigint :emp_id
      t.string :department

      t.timestamps
    end
  end
end
