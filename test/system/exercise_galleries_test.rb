require "application_system_test_case"

class ExerciseGalleriesTest < ApplicationSystemTestCase
  setup do
    @exercise_gallery = exercise_galleries(:one)
  end

  test "visiting the index" do
    visit exercise_galleries_url
    assert_selector "h1", text: "Exercise Galleries"
  end

  test "creating a Exercise gallery" do
    visit exercise_galleries_url
    click_on "New Exercise Gallery"

    fill_in "Description", with: @exercise_gallery.description
    fill_in "Muscle groups", with: @exercise_gallery.muscle_groups
    fill_in "Name", with: @exercise_gallery.name
    click_on "Create Exercise gallery"

    assert_text "Exercise gallery was successfully created"
    click_on "Back"
  end

  test "updating a Exercise gallery" do
    visit exercise_galleries_url
    click_on "Edit", match: :first

    fill_in "Description", with: @exercise_gallery.description
    fill_in "Muscle groups", with: @exercise_gallery.muscle_groups
    fill_in "Name", with: @exercise_gallery.name
    click_on "Update Exercise gallery"

    assert_text "Exercise gallery was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise gallery" do
    visit exercise_galleries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise gallery was successfully destroyed"
  end
end
