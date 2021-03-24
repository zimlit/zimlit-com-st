require "test_helper"

class TutorialsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutorials_new_url
    assert_response :success
  end

  test "should get create" do
    get tutorials_create_url
    assert_response :success
  end
end
