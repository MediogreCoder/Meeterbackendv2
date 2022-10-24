require "test_helper"

class RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get ratings_url, as: :json
    assert_response :success
  end

  test "should create rating" do
    assert_difference("Rating.count") do
      post ratings_url, params: { rating: { mentee_full_name: @rating.mentee_full_name, mentor_full_name: @rating.mentor_full_name, rating_stars: @rating.rating_stars, review_body: @rating.review_body } }, as: :json
    end

    assert_response :created
  end

  test "should show rating" do
    get rating_url(@rating), as: :json
    assert_response :success
  end

  test "should update rating" do
    patch rating_url(@rating), params: { rating: { mentee_full_name: @rating.mentee_full_name, mentor_full_name: @rating.mentor_full_name, rating_stars: @rating.rating_stars, review_body: @rating.review_body } }, as: :json
    assert_response :success
  end

  test "should destroy rating" do
    assert_difference("Rating.count", -1) do
      delete rating_url(@rating), as: :json
    end

    assert_response :no_content
  end
end
