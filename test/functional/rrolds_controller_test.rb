require 'test_helper'

class RroldsControllerTest < ActionController::TestCase
  setup do
    @rrold = rrolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rrolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rrold" do
    assert_difference('Rrold.count') do
      post :create, rrold: { name: @rrold.name, url: @rrold.url }
    end

    assert_redirected_to rrold_path(assigns(:rrold))
  end

  test "should show rrold" do
    get :show, id: @rrold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rrold
    assert_response :success
  end

  test "should update rrold" do
    put :update, id: @rrold, rrold: { name: @rrold.name, url: @rrold.url }
    assert_redirected_to rrold_path(assigns(:rrold))
  end

  test "should destroy rrold" do
    assert_difference('Rrold.count', -1) do
      delete :destroy, id: @rrold
    end

    assert_redirected_to rrolds_path
  end
end
