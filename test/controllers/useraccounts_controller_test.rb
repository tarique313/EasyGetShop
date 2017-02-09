require 'test_helper'

class UseraccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get useraccounts_index_url
    assert_response :success
  end

end
