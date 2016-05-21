require 'test_helper'

class AppsUsersControllerTest < ActionController::TestCase

  test "should user could create without parameters" do
    sign_in User.first
    post :create, {}, {format: 'html'}
    assert_response :success
  end

  test "should user could create with parameters" do
    sign_in User.first
    post :create, {app_id: 1}, {format: 'html'}
    assert_response :success
  end

end
