require "application_system_test_case"

class UserAccountsTest < ApplicationSystemTestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "visiting the index" do
    visit user_accounts_url
    assert_selector "h1", text: "User accounts"
  end

  test "should create user account" do
    visit user_accounts_url
    click_on "New user account"

    fill_in "Password", with: @user_account.password
    fill_in "Username", with: @user_account.username
    click_on "Create User account"

    assert_text "User account was successfully created"
    click_on "Back"
  end

  test "should update User account" do
    visit user_account_url(@user_account)
    click_on "Edit this user account", match: :first

    fill_in "Password", with: @user_account.password
    fill_in "Username", with: @user_account.username
    click_on "Update User account"

    assert_text "User account was successfully updated"
    click_on "Back"
  end

  test "should destroy User account" do
    visit user_account_url(@user_account)
    click_on "Destroy this user account", match: :first

    assert_text "User account was successfully destroyed"
  end
end
