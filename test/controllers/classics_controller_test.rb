require 'test_helper'

class ClassicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classic = classics(:one)
  end

  test "should get index" do
    get classics_url
    assert_response :success
  end

  test "should get new" do
    get new_classic_url
    assert_response :success
  end

  test "should create classic" do
    assert_difference('Classic.count') do
      post classics_url, params: { classic: { name: @classic.name } }
    end

    assert_redirected_to classic_url(Classic.last)
  end

  test "should show classic" do
    get classic_url(@classic)
    assert_response :success
  end

  test "should get edit" do
    get edit_classic_url(@classic)
    assert_response :success
  end

  test "should update classic" do
    patch classic_url(@classic), params: { classic: { name: @classic.name } }
    assert_redirected_to classic_url(@classic)
  end

  test "should destroy classic" do
    assert_difference('Classic.count', -1) do
      delete classic_url(@classic)
    end

    assert_redirected_to classics_url
  end
end
