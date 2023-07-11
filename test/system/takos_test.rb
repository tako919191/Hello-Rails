require "application_system_test_case"

class TakosTest < ApplicationSystemTestCase
  setup do
    @tako = takos(:one)
  end

  test "visiting the index" do
    visit takos_url
    assert_selector "h1", text: "Takos"
  end

  test "should create tako" do
    visit takos_url
    click_on "New tako"

    fill_in "Age", with: @tako.age
    fill_in "Name", with: @tako.name
    click_on "Create Tako"

    assert_text "Tako was successfully created"
    click_on "Back"
  end

  test "should update Tako" do
    visit tako_url(@tako)
    click_on "Edit this tako", match: :first

    fill_in "Age", with: @tako.age
    fill_in "Name", with: @tako.name
    click_on "Update Tako"

    assert_text "Tako was successfully updated"
    click_on "Back"
  end

  test "should destroy Tako" do
    visit tako_url(@tako)
    click_on "Destroy this tako", match: :first

    assert_text "Tako was successfully destroyed"
  end
end
