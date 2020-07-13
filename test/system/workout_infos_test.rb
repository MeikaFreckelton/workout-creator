require "application_system_test_case"

class WorkoutInfosTest < ApplicationSystemTestCase
  setup do
    @workout_info = workout_infos(:one)
  end

  test "visiting the index" do
    visit workout_infos_url
    assert_selector "h1", text: "Workout Infos"
  end

  test "creating a Workout info" do
    visit workout_infos_url
    click_on "New Workout Info"

    fill_in "Difficulty", with: @workout_info.difficulty
    fill_in "Muscle groups", with: @workout_info.muscle_groups
    fill_in "Name", with: @workout_info.name
    fill_in "User", with: @workout_info.user_id
    fill_in "Workout type", with: @workout_info.workout_type
    click_on "Create Workout info"

    assert_text "Workout info was successfully created"
    click_on "Back"
  end

  test "updating a Workout info" do
    visit workout_infos_url
    click_on "Edit", match: :first

    fill_in "Difficulty", with: @workout_info.difficulty
    fill_in "Muscle groups", with: @workout_info.muscle_groups
    fill_in "Name", with: @workout_info.name
    fill_in "User", with: @workout_info.user_id
    fill_in "Workout type", with: @workout_info.workout_type
    click_on "Update Workout info"

    assert_text "Workout info was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout info" do
    visit workout_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout info was successfully destroyed"
  end
end
