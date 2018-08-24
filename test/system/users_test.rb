require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit users_path
    assert_selector "h4", text: "Import that data!"
    assert_selector "input", id: "file"
  end
end
