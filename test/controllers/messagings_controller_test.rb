require "test_helper"

class MessagingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messaging = messagings(:one)
  end

  test "should get index" do
    get messagings_url, as: :json
    assert_response :success
  end

  test "should create messaging" do
    assert_difference("Messaging.count") do
      post messagings_url, params: { messaging: { mentee_full_name: @messaging.mentee_full_name, mentor_full_name: @messaging.mentor_full_name, message_body: @messaging.message_body, message_owner: @messaging.message_owner } }, as: :json
    end

    assert_response :created
  end

  test "should show messaging" do
    get messaging_url(@messaging), as: :json
    assert_response :success
  end

  test "should update messaging" do
    patch messaging_url(@messaging), params: { messaging: { mentee_full_name: @messaging.mentee_full_name, mentor_full_name: @messaging.mentor_full_name, message_body: @messaging.message_body, message_owner: @messaging.message_owner } }, as: :json
    assert_response :success
  end

  test "should destroy messaging" do
    assert_difference("Messaging.count", -1) do
      delete messaging_url(@messaging), as: :json
    end

    assert_response :no_content
  end
end
