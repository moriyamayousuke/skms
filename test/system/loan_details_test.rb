require "application_system_test_case"

class LoanDetailsTest < ApplicationSystemTestCase
  setup do
    @loan_detail = loan_details(:one)
  end

  test "visiting the index" do
    visit loan_details_url
    assert_selector "h1", text: "Loan Details"
  end

  test "creating a Loan detail" do
    visit loan_details_url
    click_on "New Loan Detail"

    fill_in "Class number", with: @loan_detail.class_number
    fill_in "Grade", with: @loan_detail.grade
    fill_in "Key", with: @loan_detail.key_id
    fill_in "Return date", with: @loan_detail.return_date
    fill_in "Start date", with: @loan_detail.start_date
    fill_in "User name", with: @loan_detail.user_name
    click_on "Create Loan detail"

    assert_text "Loan detail was successfully created"
    click_on "Back"
  end

  test "updating a Loan detail" do
    visit loan_details_url
    click_on "Edit", match: :first

    fill_in "Class number", with: @loan_detail.class_number
    fill_in "Grade", with: @loan_detail.grade
    fill_in "Key", with: @loan_detail.key_id
    fill_in "Return date", with: @loan_detail.return_date
    fill_in "Start date", with: @loan_detail.start_date
    fill_in "User name", with: @loan_detail.user_name
    click_on "Update Loan detail"

    assert_text "Loan detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Loan detail" do
    visit loan_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loan detail was successfully destroyed"
  end
end
