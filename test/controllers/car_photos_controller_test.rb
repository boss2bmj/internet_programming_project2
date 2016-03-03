require 'test_helper'

class CarPhotosControllerTest < ActionController::TestCase
  setup do
    @car_photo = car_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_photo" do
    assert_difference('CarPhoto.count') do
      post :create, car_photo: { image_name: @car_photo.image_name }
    end

    assert_redirected_to car_photo_path(assigns(:car_photo))
  end

  test "should show car_photo" do
    get :show, id: @car_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_photo
    assert_response :success
  end

  test "should update car_photo" do
    patch :update, id: @car_photo, car_photo: { image_name: @car_photo.image_name }
    assert_redirected_to car_photo_path(assigns(:car_photo))
  end

  test "should destroy car_photo" do
    assert_difference('CarPhoto.count', -1) do
      delete :destroy, id: @car_photo
    end

    assert_redirected_to car_photos_path
  end
end
