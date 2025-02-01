require "test_helper"

class BriefBagItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brief_bag_item = brief_bag_items(:one)
  end

  test "should get index" do
    get brief_bag_items_url
    assert_response :success
  end

  test "should get new" do
    get new_brief_bag_item_url
    assert_response :success
  end

  test "should create brief_bag_item" do
    assert_difference("BriefBagItem.count") do
      post brief_bag_items_url, params: { brief_bag_item: {} }
    end

    assert_redirected_to brief_bag_item_url(BriefBagItem.last)
  end

  test "should show brief_bag_item" do
    get brief_bag_item_url(@brief_bag_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_brief_bag_item_url(@brief_bag_item)
    assert_response :success
  end

  test "should update brief_bag_item" do
    patch brief_bag_item_url(@brief_bag_item), params: { brief_bag_item: {} }
    assert_redirected_to brief_bag_item_url(@brief_bag_item)
  end

  test "should destroy brief_bag_item" do
    assert_difference("BriefBagItem.count", -1) do
      delete brief_bag_item_url(@brief_bag_item)
    end

    assert_redirected_to brief_bag_items_url
  end
end
