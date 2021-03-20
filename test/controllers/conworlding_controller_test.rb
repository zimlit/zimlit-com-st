require "test_helper"

class ConworldingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conworlding_index_url
    assert_response :success
  end
end
