require 'test_helper'

class ExerciseInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_info = exercise_infos(:one)
  end

  test "should get index" do
    get exercise_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_info_url
    assert_response :success
  end

  test "should create exercise_info" do
    assert_difference('ExerciseInfo.count') do
      post exercise_infos_url, params: { exercise_info: { equipment_needed: @exercise_info.equipment_needed, name: @exercise_info.name, reps: @exercise_info.reps, sets: @exercise_info.sets, time: @exercise_info.time, user_id: @exercise_info.user_id, weight_needed: @exercise_info.weight_needed, workout_info_id: @exercise_info.workout_info_id } }
    end

    assert_redirected_to exercise_info_url(ExerciseInfo.last)
  end

  test "should show exercise_info" do
    get exercise_info_url(@exercise_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_info_url(@exercise_info)
    assert_response :success
  end

  test "should update exercise_info" do
    patch exercise_info_url(@exercise_info), params: { exercise_info: { equipment_needed: @exercise_info.equipment_needed, name: @exercise_info.name, reps: @exercise_info.reps, sets: @exercise_info.sets, time: @exercise_info.time, user_id: @exercise_info.user_id, weight_needed: @exercise_info.weight_needed, workout_info_id: @exercise_info.workout_info_id } }
    assert_redirected_to exercise_info_url(@exercise_info)
  end

  test "should destroy exercise_info" do
    assert_difference('ExerciseInfo.count', -1) do
      delete exercise_info_url(@exercise_info)
    end

    assert_redirected_to exercise_infos_url
  end
end
