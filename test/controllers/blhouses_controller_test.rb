require 'test_helper'

class BlhousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blhouse = blhouses(:one)
  end

  test "should get index" do
    get blhouses_url
    assert_response :success
  end

  test "should get new" do
    get new_blhouse_url
    assert_response :success
  end

  test "should create blhouse" do
    assert_difference('Blhouse.count') do
      post blhouses_url, params: { blhouse: {  } }
    end

    assert_redirected_to blhouse_url(Blhouse.last)
  end

  test "should show blhouse" do
    get blhouse_url(@blhouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_blhouse_url(@blhouse)
    assert_response :success
  end

  test "should update blhouse" do
    patch blhouse_url(@blhouse), params: { blhouse: {  } }
    assert_redirected_to blhouse_url(@blhouse)
  end

  test "should destroy blhouse" do
    assert_difference('Blhouse.count', -1) do
      delete blhouse_url(@blhouse)
    end

    assert_redirected_to blhouses_url
  end
end
