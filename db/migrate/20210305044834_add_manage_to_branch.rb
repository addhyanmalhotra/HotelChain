class AddManageToBranch < ActiveRecord::Migration[6.1]
  def change
    remove_column :hotels, :manager_id
    add_reference :hotels, :manager, foreign_key: {to_table: :employees}
  end
end
