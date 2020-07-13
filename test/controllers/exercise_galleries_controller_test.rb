require 'test_helper'

class ExerciseGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_gallery = exercise_galleries(:one)
  end

  test "should get index" do
    get exercise_galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_gallery_url
    assert_response :success
  end

  test "should create exercise_gallery" do
    assert_difference('ExerciseGallery.count') do
      post exercise_galleries_url, params: { exercise_gallery: { description: @exercise_gallery.description, muscle_groups: @exercise_gallery.muscle_groups, name: @exercise_gallery.name } }
    end

    assert_redirected_to exercise_gallery_url(ExerciseGallery.last)
  end

  test "should show exercise_gallery" do
    get exercise_gallery_url(@exercise_gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_gallery_url(@exercise_gallery)
    assert_response :success
  end

  test "should update exercise_gallery" do
    patch exercise_gallery_url(@exercise_gallery), params: { exercise_gallery: { description: @exercise_gallery.description, muscle_groups: @exercise_gallery.muscle_groups, name: @exercise_gallery.name } }
    assert_redirected_to exercise_gallery_url(@exercise_gallery)
  end

  test "should destroy exercise_gallery" do
    assert_difference('ExerciseGallery.count', -1) do
      delete exercise_gallery_url(@exercise_gallery)
    end

    assert_redirected_to exercise_galleries_url
  end
end
