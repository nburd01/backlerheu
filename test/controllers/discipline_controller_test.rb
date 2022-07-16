require "test_helper"

class DisciplineControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get discipline_create_url
    assert_response :success
  end

  test "should get update" do
    get discipline_update_url
    assert_response :success
  end

  test "should get edit" do
    get discipline_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get discipline_destroy_url
    assert_response :success
  end

  test "should get index" do
    get discipline_index_url
    assert_response :success
  end

  test "should get show" do
    get discipline_show_url
    assert_response :success
  end
end
