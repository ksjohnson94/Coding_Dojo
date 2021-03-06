require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_index_url
    assert_response :success
  end

  test "should get show" do
    get form_show_url
    assert_response :success
  end

  test "should get new" do
    get form_new_url
    assert_response :success
  end

  test "should get create" do
    get form_create_url
    assert_response :success
  end

  test "should get update" do
    get form_update_url
    assert_response :success
  end

  test "should get destroy" do
    get form_destroy_url
    assert_response :success
  end

  test "should get resources:surveys" do
    get form_resources:surveys_url
    assert_response :success
  end

end
