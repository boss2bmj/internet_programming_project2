require 'test_helper'

class CarDetailsControllerTest < ActionController::TestCase
  setup do
    @car_detail = car_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_detail" do
    assert_difference('CarDetail.count') do
      post :create, car_detail: { car_category: @car_detail.car_category, car_license: @car_detail.car_license, car_status: @car_detail.car_status, car_subcategory: @car_detail.car_subcategory, description: @car_detail.description, enter_date: @car_detail.enter_date }
    end

    assert_redirected_to car_detail_path(assigns(:car_detail))
  end

  test "should show car_detail" do
    get :show, id: @car_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_detail
    assert_response :success
  end

  test "should update car_detail" do
    patch :update, id: @car_detail, car_detail: { car_category: @car_detail.car_category, car_license: @car_detail.car_license, car_status: @car_detail.car_status, car_subcategory: @car_detail.car_subcategory, description: @car_detail.description, enter_date: @car_detail.enter_date }
    assert_redirected_to car_detail_path(assigns(:car_detail))
  end

  test "should destroy car_detail" do
    assert_difference('CarDetail.count', -1) do
      delete :destroy, id: @car_detail
    end

    assert_redirected_to car_details_path
  end
end
