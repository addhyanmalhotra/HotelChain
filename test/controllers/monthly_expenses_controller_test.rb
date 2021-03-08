require "test_helper"

class MonthlyExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monthly_expense = monthly_expenses(:one)
  end

  test "should get index" do
    get monthly_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_monthly_expense_url
    assert_response :success
  end

  test "should create monthly_expense" do
    assert_difference('MonthlyExpense.count') do
      post monthly_expenses_url, params: { monthly_expense: { branch_id: @monthly_expense.branch_id, electricity_bill: @monthly_expense.electricity_bill, financial_month: @monthly_expense.financial_month, monthly_profit: @monthly_expense.monthly_profit, monthly_turnover: @monthly_expense.monthly_turnover, water_bill: @monthly_expense.water_bill } }
    end

    assert_redirected_to monthly_expense_url(MonthlyExpense.last)
  end

  test "should show monthly_expense" do
    get monthly_expense_url(@monthly_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_monthly_expense_url(@monthly_expense)
    assert_response :success
  end

  test "should update monthly_expense" do
    patch monthly_expense_url(@monthly_expense), params: { monthly_expense: { branch_id: @monthly_expense.branch_id, electricity_bill: @monthly_expense.electricity_bill, financial_month: @monthly_expense.financial_month, monthly_profit: @monthly_expense.monthly_profit, monthly_turnover: @monthly_expense.monthly_turnover, water_bill: @monthly_expense.water_bill } }
    assert_redirected_to monthly_expense_url(@monthly_expense)
  end

  test "should destroy monthly_expense" do
    assert_difference('MonthlyExpense.count', -1) do
      delete monthly_expense_url(@monthly_expense)
    end

    assert_redirected_to monthly_expenses_url
  end
end
