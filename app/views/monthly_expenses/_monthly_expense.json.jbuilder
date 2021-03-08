json.extract! monthly_expense, :id, :financial_month, :electricity_bill, :water_bill, :branch_id, :monthly_turnover, :monthly_profit, :created_at, :updated_at
json.url monthly_expense_url(monthly_expense, format: :json)
