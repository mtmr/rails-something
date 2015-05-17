require 'test_helper'

class MarksControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

end
