require "test_helper"

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get resources_url, as: :json
    assert_response :success
  end

  test "should create resource" do
    assert_difference("Resource.count") do
      post resources_url, params: { resource: { full_name: @resource.full_name, topic: @resource.topic, topic_link: @resource.topic_link } }, as: :json
    end

    assert_response :created
  end

  test "should show resource" do
    get resource_url(@resource), as: :json
    assert_response :success
  end

  test "should update resource" do
    patch resource_url(@resource), params: { resource: { full_name: @resource.full_name, topic: @resource.topic, topic_link: @resource.topic_link } }, as: :json
    assert_response :success
  end

  test "should destroy resource" do
    assert_difference("Resource.count", -1) do
      delete resource_url(@resource), as: :json
    end

    assert_response :no_content
  end
end
