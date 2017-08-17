require 'test_helper'

class MifsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mif = mifs(:one)
  end

  test "should get index" do
    get mifs_url
    assert_response :success
  end

  test "should get new" do
    get new_mif_url
    assert_response :success
  end

  test "should create mif" do
    assert_difference('Mif.count') do
      post mifs_url, params: { mif: {  } }
    end

    assert_redirected_to mif_url(Mif.last)
  end

  test "should show mif" do
    get mif_url(@mif)
    assert_response :success
  end

  test "should get edit" do
    get edit_mif_url(@mif)
    assert_response :success
  end

  test "should update mif" do
    patch mif_url(@mif), params: { mif: {  } }
    assert_redirected_to mif_url(@mif)
  end

  test "should destroy mif" do
    assert_difference('Mif.count', -1) do
      delete mif_url(@mif)
    end

    assert_redirected_to mifs_url
  end
end
