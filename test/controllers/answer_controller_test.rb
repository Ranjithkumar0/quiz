require "test_helper"

class AnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get create_answers" do
    get answer_create_answers_url
    assert_response :success
  end
end
