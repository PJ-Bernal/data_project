require "test_helper"

class AilmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ailments_index_url
    assert_response :success
  end
end
