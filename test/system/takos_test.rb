require "application_system_test_case"

class TakosTest < ApplicationSystemTestCase
  setup do
    @tako = takos(:one)
  end

  test "visiting the index" do
    visit takos_url
    assert_selector "h1", text: "My Takos"
  end

  test "should create tako" do
    visit takos_url
    click_on "Add a tako"

    fill_in "Age", with: @tako.age
    fill_in "Name", with: @tako.name
    fill_in "Kind", with: @tako.kind
    click_on "Create Tako"

    assert_text "Tako was successfully created"
    click_on "Home", match: :first
  end

  test "should update Tako" do
    visit tako_url(@tako)
    click_on "Edit", match: :first

    fill_in "Age", with: @tako.age
    fill_in "Name", with: @tako.name
    fill_in "Kind", with: @tako.kind
    click_on "Update Tako"

    assert_text "Tako was successfully updated"
    click_on "Home", match: :first
  end

  test "should destroy Tako" do
    visit tako_url(@tako)

    accept_alert "Are you sure?" do
      click_on "Delete", match: :first do
        click_link 'OK'
      end
    end

    assert_text "Tako was successfully destroyed"
  end

end
