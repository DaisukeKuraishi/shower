require 'test_helper'

class DropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drops_index_url
    assert_response :success
  end

end
