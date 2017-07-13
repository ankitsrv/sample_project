require 'test_helper'

class SecretCodesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get secret_codes_new_url
    assert_response :success
  end

  test "should get index" do
    get secret_codes_index_url
    assert_response :success
  end

  test "should get create" do
    get secret_codes_create_url
    assert_response :success
  end

  test "should get edit" do
    get secret_codes_edit_url
    assert_response :success
  end

  test "should get show" do
    get secret_codes_show_url
    assert_response :success
  end

  test "should get delete" do
    get secret_codes_delete_url
    assert_response :success
  end

  test "should get update" do
    get secret_codes_update_url
    assert_response :success
  end

end
