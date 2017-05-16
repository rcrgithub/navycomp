require 'test_helper'

class NvoccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nvocc = nvoccs(:one)
  end

  test "should get index" do
    get nvoccs_url
    assert_response :success
  end

  test "should get new" do
    get new_nvocc_url
    assert_response :success
  end

  test "should create nvocc" do
    assert_difference('Nvocc.count') do
      post nvoccs_url, params: { nvocc: {  } }
    end

    assert_redirected_to nvocc_url(Nvocc.last)
  end

  test "should show nvocc" do
    get nvocc_url(@nvocc)
    assert_response :success
  end

  test "should get edit" do
    get edit_nvocc_url(@nvocc)
    assert_response :success
  end

  test "should update nvocc" do
    patch nvocc_url(@nvocc), params: { nvocc: {  } }
    assert_redirected_to nvocc_url(@nvocc)
  end

  test "should destroy nvocc" do
    assert_difference('Nvocc.count', -1) do
      delete nvocc_url(@nvocc)
    end

    assert_redirected_to nvoccs_url
  end
end
