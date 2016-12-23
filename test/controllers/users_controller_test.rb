require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "should get new" do
    get login_path
    assert_response :success    
  end
end
