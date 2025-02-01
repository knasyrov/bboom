require "test_helper"

class BriefBagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brief_bag = brief_bags(:one)
  end

  test "should get index" do
    get brief_bags_url
    assert_response :success
  end

  test "should get new" do
    get new_brief_bag_url
    assert_response :success
  end

  test "should create brief_bag" do
    assert_difference("BriefBag.count") do
      post brief_bags_url, params: { brief_bag: {} }
    end

    assert_redirected_to brief_bag_url(BriefBag.last)
  end

  test "should show brief_bag" do
    get brief_bag_url(@brief_bag)
    assert_response :success
  end

  test "should get edit" do
    get edit_brief_bag_url(@brief_bag)
    assert_response :success
  end

  test "should update brief_bag" do
    patch brief_bag_url(@brief_bag), params: { brief_bag: {} }
    assert_redirected_to brief_bag_url(@brief_bag)
  end

  test "should destroy brief_bag" do
    assert_difference("BriefBag.count", -1) do
      delete brief_bag_url(@brief_bag)
    end

    assert_redirected_to brief_bags_url
  end
end
