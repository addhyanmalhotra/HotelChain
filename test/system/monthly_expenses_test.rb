require "application_system_test_case"

class MonthlyExpensesTest < ApplicationSystemTestCase
  setup do
    @monthly_expense = monthly_expenses(:one)
  end

  test "visiting the index" do
    visit monthly_expenses_url
    assert_selector "h1", text: "Monthly Expenses"
  end

  test "creating a Monthly expense" do
    visit monthly_expenses_url
    click_on "New Monthly Expense"

    fill_in "Branch", with: @monthly_expense.branch_id
    fill_in "Electricity bill", with: @monthly_expense.electricity_bill
    fill_in "Financial month", with: @monthly_expense.financial_month
    fill_in "Monthly profit", with: @monthly_expense.monthly_profit
    fill_in "Monthly turnover", with: @monthly_expense.monthly_turnover
    fill_in "Water bill", with: @monthly_expense.water_bill
    click_on "Create Monthly expense"

    assert_text "Monthly expense was successfully created"
    click_on "Back"
  end

  test "updating a Monthly expense" do
    visit monthly_expenses_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @monthly_expense.branch_id
    fill_in "Electricity bill", with: @monthly_expense.electricity_bill
    fill_in "Financial month", with: @monthly_expense.financial_month
    fill_in "Monthly profit", with: @monthly_expense.monthly_profit
    fill_in "Monthly turnover", with: @monthly_expense.monthly_turnover
    fill_in "Water bill", with: @monthly_expense.water_bill
    click_on "Update Monthly expense"

    assert_text "Monthly expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Monthly expense" do
    visit monthly_expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monthly expense was successfully destroyed"
  end
end
