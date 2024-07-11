require "test_helper"

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get service" do
    get services_service_url
    assert_response :success
  end
end
