require 'test_helper'

class MiscControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
