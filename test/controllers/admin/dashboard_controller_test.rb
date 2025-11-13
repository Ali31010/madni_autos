require "test_helper"

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    # Load an admin user from fixtures
    @admin = users(:admin)
    sign_in @admin
  end
  test "should get index" do
    get admin_dashboard_path
    assert_response :success
  end
end
