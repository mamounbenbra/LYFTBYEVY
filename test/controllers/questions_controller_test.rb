require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get ressources" do
    get questions_ressources_url
    assert_response :success
  end

end
