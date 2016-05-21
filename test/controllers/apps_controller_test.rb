require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, {format: 'json'}
    assert_response :success
  end

  test "should get list of apps" do
    get :index, {format: 'json'}
    
    response_parsed = JSON.parse(response.body)
    assert response_parsed["apps"].present?
  end

  test "should get 3 attributes per app" do
    get :index, {format: 'json'}
    
    response_parsed = JSON.parse(response.body)
    assert [
      response_parsed["apps"][0]["id"], 
      response_parsed["apps"][0]["resource_url"],
      response_parsed["apps"][0]["name"]
    ].select{|e| e.present?}.count == 3
  end

end
