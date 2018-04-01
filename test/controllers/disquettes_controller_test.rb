require 'test_helper'

class DisquettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disquette = disquettes(:one)
  end

  test "should get index" do
    get disquettes_url
    assert_response :success
  end

  test "should get new" do
    get new_disquette_url
    assert_response :success
  end

  test "should create disquette" do
    assert_difference('Disquette.count') do
      post disquettes_url, params: { disquette: { disquette: @disquette.disquette, user_name: @disquette.user_name } }
    end

    assert_redirected_to disquette_url(Disquette.last)
  end

  test "should show disquette" do
    get disquette_url(@disquette)
    assert_response :success
  end

  test "should get edit" do
    get edit_disquette_url(@disquette)
    assert_response :success
  end

  test "should update disquette" do
    patch disquette_url(@disquette), params: { disquette: { disquette: @disquette.disquette, user_name: @disquette.user_name } }
    assert_redirected_to disquette_url(@disquette)
  end

  test "should destroy disquette" do
    assert_difference('Disquette.count', -1) do
      delete disquette_url(@disquette)
    end

    assert_redirected_to disquettes_url
  end
end
