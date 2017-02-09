require 'test_helper'

class UserAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_accounts_index_url
    assert_response :success
  end

end
