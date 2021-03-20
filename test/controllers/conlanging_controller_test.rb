require "test_helper"

class ConlangingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conlanging_index_url
    assert_response :success
  end
end
