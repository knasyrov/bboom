require "application_system_test_case"

class BriefBagItemsTest < ApplicationSystemTestCase
  setup do
    @brief_bag_item = brief_bag_items(:one)
  end

  test "visiting the index" do
    visit brief_bag_items_url
    assert_selector "h1", text: "Brief bag items"
  end

  test "should create brief bag item" do
    visit brief_bag_items_url
    click_on "New brief bag item"

    click_on "Create Brief bag item"

    assert_text "Brief bag item was successfully created"
    click_on "Back"
  end

  test "should update Brief bag item" do
    visit brief_bag_item_url(@brief_bag_item)
    click_on "Edit this brief bag item", match: :first

    click_on "Update Brief bag item"

    assert_text "Brief bag item was successfully updated"
    click_on "Back"
  end

  test "should destroy Brief bag item" do
    visit brief_bag_item_url(@brief_bag_item)
    click_on "Destroy this brief bag item", match: :first

    assert_text "Brief bag item was successfully destroyed"
  end
end
