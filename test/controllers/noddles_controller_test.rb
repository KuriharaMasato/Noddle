require 'test_helper'

class NoddlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noddle = noddles(:one)
  end

  test "should get index" do
    get noddles_url
    assert_response :success
  end

  test "should get new" do
    get new_noddle_url
    assert_response :success
  end

  test "should create noddle" do
    assert_difference('Noddle.count') do
      post noddles_url, params: { noddle: { noddle: @noddle.noddle, title: @noddle.title } }
    end

    assert_redirected_to noddle_url(Noddle.last)
  end

  test "should show noddle" do
    get noddle_url(@noddle)
    assert_response :success
  end

  test "should get edit" do
    get edit_noddle_url(@noddle)
    assert_response :success
  end

  test "should update noddle" do
    patch noddle_url(@noddle), params: { noddle: { noddle: @noddle.noddle, title: @noddle.title } }
    assert_redirected_to noddle_url(@noddle)
  end

  test "should destroy noddle" do
    assert_difference('Noddle.count', -1) do
      delete noddle_url(@noddle)
    end

    assert_redirected_to noddles_url
  end
end
