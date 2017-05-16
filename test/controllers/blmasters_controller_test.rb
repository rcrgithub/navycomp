require 'test_helper'

class BlmastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blmaster = blmasters(:one)
  end

  test "should get index" do
    get blmasters_url
    assert_response :success
  end

  test "should get new" do
    get new_blmaster_url
    assert_response :success
  end

  test "should create blmaster" do
    assert_difference('Blmaster.count') do
      post blmasters_url, params: { blmaster: {  } }
    end

    assert_redirected_to blmaster_url(Blmaster.last)
  end

  test "should show blmaster" do
    get blmaster_url(@blmaster)
    assert_response :success
  end

  test "should get edit" do
    get edit_blmaster_url(@blmaster)
    assert_response :success
  end

  test "should update blmaster" do
    patch blmaster_url(@blmaster), params: { blmaster: {  } }
    assert_redirected_to blmaster_url(@blmaster)
  end

  test "should destroy blmaster" do
    assert_difference('Blmaster.count', -1) do
      delete blmaster_url(@blmaster)
    end

    assert_redirected_to blmasters_url
  end
end
