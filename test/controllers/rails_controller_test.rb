require 'test_helper'

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get g" do
    get rails_g_url
    assert_response :success
  end

  test "should get controller" do
    get rails_controller_url
    assert_response :success
  end

  test "should get tasks" do
    get rails_tasks_url
    assert_response :success
  end

  test "should get index" do
    get rails_index_url
    assert_response :success
  end

  test "should get show" do
    get rails_show_url
    assert_response :success
  end

  test "should get new" do
    get rails_new_url
    assert_response :success
  end

  test "should get edit" do
    get rails_edit_url
    assert_response :success
  end

end
