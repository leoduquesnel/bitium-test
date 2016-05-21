require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get home when user is logged" do
    sign_in User.first
    get :home
    assert_response :success
  end

end
