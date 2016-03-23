require 'test_helper'

class FriendshipsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroye" do
    get :destroye
    assert_response :success
  end

end
