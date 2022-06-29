require "test_helper"

class SendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @send = sends(:one)
  end

  test "should get index" do
    get sends_url, as: :json
    assert_response :success
  end

  test "should create send" do
    assert_difference("Send.count") do
      post sends_url, params: { send: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show send" do
    get send_url(@send), as: :json
    assert_response :success
  end

  test "should update send" do
    patch send_url(@send), params: { send: {  } }, as: :json
    assert_response :success
  end

  test "should destroy send" do
    assert_difference("Send.count", -1) do
      delete send_url(@send), as: :json
    end

    assert_response :no_content
  end
end
