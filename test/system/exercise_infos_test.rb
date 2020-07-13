require "application_system_test_case"

class ExerciseInfosTest < ApplicationSystemTestCase
  setup do
    @exercise_info = exercise_infos(:one)
  end

  test "visiting the index" do
    visit exercise_infos_url
    assert_selector "h1", text: "Exercise Infos"
  end

  test "creating a Exercise info" do
    visit exercise_infos_url
    click_on "New Exercise Info"

    fill_in "Equipment needed", with: @exercise_info.equipment_needed
    fill_in "Name", with: @exercise_info.name
    fill_in "Reps", with: @exercise_info.reps
    fill_in "Sets", with: @exercise_info.sets
    fill_in "Time", with: @exercise_info.time
    fill_in "User", with: @exercise_info.user_id
    fill_in "Weight needed", with: @exercise_info.weight_needed
    fill_in "Workout info", with: @exercise_info.workout_info_id
    click_on "Create Exercise info"

    assert_text "Exercise info was successfully created"
    click_on "Back"
  end

  test "updating a Exercise info" do
    visit exercise_infos_url
    click_on "Edit", match: :first

    fill_in "Equipment needed", with: @exercise_info.equipment_needed
    fill_in "Name", with: @exercise_info.name
    fill_in "Reps", with: @exercise_info.reps
    fill_in "Sets", with: @exercise_info.sets
    fill_in "Time", with: @exercise_info.time
    fill_in "User", with: @exercise_info.user_id
    fill_in "Weight needed", with: @exercise_info.weight_needed
    fill_in "Workout info", with: @exercise_info.workout_info_id
    click_on "Update Exercise info"

    assert_text "Exercise info was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise info" do
    visit exercise_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise info was successfully destroyed"
  end
end
