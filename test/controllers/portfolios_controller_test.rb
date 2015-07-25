require 'test_helper'

class PortfoliosControllerTest < ActionController::TestCase

  test "get index action" do
    get :index
    assert_response :success
  end


  test "get new action" do
    get :new
    assert_response :success
  end
end
