require "application_system_test_case"

class BriefBagsTest < ApplicationSystemTestCase
  setup do
    @brief_bag = brief_bags(:one)
  end

  test "visiting the index" do
    visit brief_bags_url
    assert_selector "h1", text: "Brief bags"
  end

  test "should create brief bag" do
    visit brief_bags_url
    click_on "New brief bag"

    click_on "Create Brief bag"

    assert_text "Brief bag was successfully created"
    click_on "Back"
  end

  test "should update Brief bag" do
    visit brief_bag_url(@brief_bag)
    click_on "Edit this brief bag", match: :first

    click_on "Update Brief bag"

    assert_text "Brief bag was successfully updated"
    click_on "Back"
  end

  test "should destroy Brief bag" do
    visit brief_bag_url(@brief_bag)
    click_on "Destroy this brief bag", match: :first

    assert_text "Brief bag was successfully destroyed"
  end
end
