require "test_helper"

class CubingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cubing_index_url
    assert_response :success
  end
end
