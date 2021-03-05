class RemoveBranchId < ActiveRecord::Migration[6.1]
  def change
    remove_column :hotels, :branch_id
  end
end
