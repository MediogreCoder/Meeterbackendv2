require "test_helper"

class MentoringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring = mentorings(:one)
  end

  test "should get index" do
    get mentorings_url, as: :json
    assert_response :success
  end

  test "should create mentoring" do
    assert_difference("Mentoring.count") do
      post mentorings_url, params: { mentoring: { action_needed: @mentoring.action_needed, activity: @mentoring.activity, confirmed: @mentoring.confirmed, mentee_full_name: @mentoring.mentee_full_name, mentor_full_name: @mentoring.mentor_full_name } }, as: :json
    end

    assert_response :created
  end

  test "should show mentoring" do
    get mentoring_url(@mentoring), as: :json
    assert_response :success
  end

  test "should update mentoring" do
    patch mentoring_url(@mentoring), params: { mentoring: { action_needed: @mentoring.action_needed, activity: @mentoring.activity, confirmed: @mentoring.confirmed, mentee_full_name: @mentoring.mentee_full_name, mentor_full_name: @mentoring.mentor_full_name } }, as: :json
    assert_response :success
  end

  test "should destroy mentoring" do
    assert_difference("Mentoring.count", -1) do
      delete mentoring_url(@mentoring), as: :json
    end

    assert_response :no_content
  end
end
