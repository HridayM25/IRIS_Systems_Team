require "test_helper"

class FrensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fren = frens(:one)
  end

  test "should get index" do
    get frens_url
    assert_response :success
  end

  test "should get new" do
    get new_fren_url
    assert_response :success
  end

  test "should create fren" do
    assert_difference("Fren.count") do
      post frens_url, params: { fren: { email: @fren.email, first_name: @fren.first_name, last_name: @fren.last_name } }
    end

    assert_redirected_to fren_url(Fren.last)
  end

  test "should show fren" do
    get fren_url(@fren)
    assert_response :success
  end

  test "should get edit" do
    get edit_fren_url(@fren)
    assert_response :success
  end

  test "should update fren" do
    patch fren_url(@fren), params: { fren: { email: @fren.email, first_name: @fren.first_name, last_name: @fren.last_name } }
    assert_redirected_to fren_url(@fren)
  end

  test "should destroy fren" do
    assert_difference("Fren.count", -1) do
      delete fren_url(@fren)
    end

    assert_redirected_to frens_url
  end
end
