require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get trash_em" do
    get home_trash_em_url
    assert_response :success
  end

  test "should get trash_em_all" do
    get home_trash_em_all_url
    assert_response :success
  end
end
