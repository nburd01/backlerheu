require "test_helper"

class ReceivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receife = receives(:one)
  end

  test "should get index" do
    get receives_url, as: :json
    assert_response :success
  end

  test "should create receife" do
    assert_difference("Receive.count") do
      post receives_url, params: { receife: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show receife" do
    get receife_url(@receife), as: :json
    assert_response :success
  end

  test "should update receife" do
    patch receife_url(@receife), params: { receife: {  } }, as: :json
    assert_response :success
  end

  test "should destroy receife" do
    assert_difference("Receive.count", -1) do
      delete receife_url(@receife), as: :json
    end

    assert_response :no_content
  end
end
