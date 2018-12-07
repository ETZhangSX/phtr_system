require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get sign_in_hello_url
    assert_response :success
  end

end
