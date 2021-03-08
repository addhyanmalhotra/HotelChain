class CreateMonthlyExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_expenses do |t|
      t.date :financial_month
      t.float :electricity_bill
      t.float :water_bill
      t.bigint :branch_id
      t.float :monthly_turnover
      t.float :monthly_profit

      t.timestamps
    end
  end
end
