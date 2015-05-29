require 'test_helper'

class LessonImageInfosControllerTest < ActionController::TestCase
  setup do
    @lesson_image_info = lesson_image_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_image_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_image_info" do
    assert_difference('LessonImageInfo.count') do
      post :create, lesson_image_info: { lesson_id: @lesson_image_info.lesson_id, lesson_image: @lesson_image_info.lesson_image, title: @lesson_image_info.title }
    end

    assert_redirected_to lesson_image_info_path(assigns(:lesson_image_info))
  end

  test "should show lesson_image_info" do
    get :show, id: @lesson_image_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_image_info
    assert_response :success
  end

  test "should update lesson_image_info" do
    patch :update, id: @lesson_image_info, lesson_image_info: { lesson_id: @lesson_image_info.lesson_id, lesson_image: @lesson_image_info.lesson_image, title: @lesson_image_info.title }
    assert_redirected_to lesson_image_info_path(assigns(:lesson_image_info))
  end

  test "should destroy lesson_image_info" do
    assert_difference('LessonImageInfo.count', -1) do
      delete :destroy, id: @lesson_image_info
    end

    assert_redirected_to lesson_image_infos_path
  end
end
