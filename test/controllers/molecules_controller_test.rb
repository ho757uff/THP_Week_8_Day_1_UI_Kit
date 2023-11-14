require "test_helper"

class MoleculesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get molecules_index_url
    assert_response :success
  end
end
