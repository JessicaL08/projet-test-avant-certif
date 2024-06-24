require "test_helper"

class AppartementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appartement_index_url
    assert_response :success
  end

  test "should get show" do
    get appartement_show_url
    assert_response :success
  end
end
