require "application_system_test_case"

class ToDoListsTest < ApplicationSystemTestCase
  setup do
    @to_do_list = to_do_lists(:one)
  end

  test "visiting the index" do
    visit to_do_lists_url
    assert_selector "h1", text: "To do lists"
  end

  test "should create to do list" do
    visit to_do_lists_url
    click_on "New to do list"

    fill_in "Activity", with: @to_do_list.activity
    check "Done" if @to_do_list.done
    click_on "Create To do list"

    assert_text "To do list was successfully created"
    click_on "Back"
  end

  test "should update To do list" do
    visit to_do_list_url(@to_do_list)
    click_on "Edit this to do list", match: :first

    fill_in "Activity", with: @to_do_list.activity
    check "Done" if @to_do_list.done
    click_on "Update To do list"

    assert_text "To do list was successfully updated"
    click_on "Back"
  end

  test "should destroy To do list" do
    visit to_do_list_url(@to_do_list)
    click_on "Destroy this to do list", match: :first

    assert_text "To do list was successfully destroyed"
  end
end
