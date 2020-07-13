require 'test_helper'

class WorkoutInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_info = workout_infos(:one)
  end

  test "should get index" do
    get workout_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_info_url
    assert_response :success
  end

  test "should create workout_info" do
    assert_difference('WorkoutInfo.count') do
      post workout_infos_url, params: { workout_info: { difficulty: @workout_info.difficulty, muscle_groups: @workout_info.muscle_groups, name: @workout_info.name, user_id: @workout_info.user_id, workout_type: @workout_info.workout_type } }
    end

    assert_redirected_to workout_info_url(WorkoutInfo.last)
  end

  test "should show workout_info" do
    get workout_info_url(@workout_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_info_url(@workout_info)
    assert_response :success
  end

  test "should update workout_info" do
    patch workout_info_url(@workout_info), params: { workout_info: { difficulty: @workout_info.difficulty, muscle_groups: @workout_info.muscle_groups, name: @workout_info.name, user_id: @workout_info.user_id, workout_type: @workout_info.workout_type } }
    assert_redirected_to workout_info_url(@workout_info)
  end

  test "should destroy workout_info" do
    assert_difference('WorkoutInfo.count', -1) do
      delete workout_info_url(@workout_info)
    end

    assert_redirected_to workout_infos_url
  end
end
