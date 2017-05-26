require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get cart" do
    get register_cart_url
    assert_response :success
  end

  test "should get pay" do
    get register_pay_url
    assert_response :success
  end

  test "should get arigato" do
    get register_arigato_url
    assert_response :success
  end

end
