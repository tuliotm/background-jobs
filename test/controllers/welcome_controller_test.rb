require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get without_background_job" do
    get welcome_without_background_job_url
    assert_response :success
  end

  test "should get with_background_job" do
    get welcome_with_background_job_url
    assert_response :success
  end
end
