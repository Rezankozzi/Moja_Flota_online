require "test_helper"

class RepairePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repaire_part = repaire_parts(:one)
  end

  test "should get index" do
    get repaire_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_repaire_part_url
    assert_response :success
  end

  test "should create repaire_part" do
    assert_difference('RepairePart.count') do
      post repaire_parts_url, params: { repaire_part: {  } }
    end

    assert_redirected_to repaire_part_url(RepairePart.last)
  end

  test "should show repaire_part" do
    get repaire_part_url(@repaire_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_repaire_part_url(@repaire_part)
    assert_response :success
  end

  test "should update repaire_part" do
    patch repaire_part_url(@repaire_part), params: { repaire_part: {  } }
    assert_redirected_to repaire_part_url(@repaire_part)
  end

  test "should destroy repaire_part" do
    assert_difference('RepairePart.count', -1) do
      delete repaire_part_url(@repaire_part)
    end

    assert_redirected_to repaire_parts_url
  end
end
