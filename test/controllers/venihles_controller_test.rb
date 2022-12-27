require "test_helper"

class VenihlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venihle = venihles(:one)
  end

  test "should get index" do
    get venihles_url
    assert_response :success
  end

  test "should get new" do
    get new_venihle_url
    assert_response :success
  end

  test "should create venihle" do
    assert_difference('Venihle.count') do
      post venihles_url, params: { venihle: {  } }
    end

    assert_redirected_to venihle_url(Venihle.last)
  end

  test "should show venihle" do
    get venihle_url(@venihle)
    assert_response :success
  end

  test "should get edit" do
    get edit_venihle_url(@venihle)
    assert_response :success
  end

  test "should update venihle" do
    patch venihle_url(@venihle), params: { venihle: {  } }
    assert_redirected_to venihle_url(@venihle)
  end

  test "should destroy venihle" do
    assert_difference('Venihle.count', -1) do
      delete venihle_url(@venihle)
    end

    assert_redirected_to venihles_url
  end
end
