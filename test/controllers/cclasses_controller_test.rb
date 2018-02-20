require 'test_helper'

class CclassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cclasses_index_url
    assert_response :success
  end

  test "should get show" do
    get cclasses_show_url
    assert_response :success
  end

  test "should get new" do
    get cclasses_new_url
    assert_response :success
  end

  test "should get update" do
    get cclasses_update_url
    assert_response :success
  end

  test "should get create" do
    get cclasses_create_url
    assert_response :success
  end

  test "should get edit" do
    get cclasses_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get cclasses_destroy_url
    assert_response :success
  end

end
