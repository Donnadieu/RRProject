require 'test_helper'

class ClassGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get class_groups_index_url
    assert_response :success
  end

  test "should get show" do
    get class_groups_show_url
    assert_response :success
  end

  test "should get new" do
    get class_groups_new_url
    assert_response :success
  end

  test "should get update" do
    get class_groups_update_url
    assert_response :success
  end

  test "should get create" do
    get class_groups_create_url
    assert_response :success
  end

  test "should get edit" do
    get class_groups_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get class_groups_destroy_url
    assert_response :success
  end

end
