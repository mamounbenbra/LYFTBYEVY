require 'test_helper'

class JoursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get jours_new_url
    assert_response :success
  end

  test "should get create" do
    get jours_create_url
    assert_response :success
  end

end
