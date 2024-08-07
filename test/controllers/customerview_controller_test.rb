require "test_helper"

class CustomerviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customerview_index_url
    assert_response :success
  end
end
