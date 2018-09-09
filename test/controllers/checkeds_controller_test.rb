require 'test_helper'

class CheckedsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get checkeds_create_url
    assert_response :success
  end

end
