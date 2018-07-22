require 'test_helper'

class PlayfulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playful = playfuls(:one)
  end

  test "should get index" do
    get playfuls_url
    assert_response :success
  end

  test "should get new" do
    get new_playful_url
    assert_response :success
  end

  test "should create playful" do
    assert_difference('Playful.count') do
      post playfuls_url, params: { playful: { name: @playful.name } }
    end

    assert_redirected_to playful_url(Playful.last)
  end

  test "should show playful" do
    get playful_url(@playful)
    assert_response :success
  end

  test "should get edit" do
    get edit_playful_url(@playful)
    assert_response :success
  end

  test "should update playful" do
    patch playful_url(@playful), params: { playful: { name: @playful.name } }
    assert_redirected_to playful_url(@playful)
  end

  test "should destroy playful" do
    assert_difference('Playful.count', -1) do
      delete playful_url(@playful)
    end

    assert_redirected_to playfuls_url
  end
end
