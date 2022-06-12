require "application_system_test_case"

class FrensTest < ApplicationSystemTestCase
  setup do
    @fren = frens(:one)
  end

  test "visiting the index" do
    visit frens_url
    assert_selector "h1", text: "Frens"
  end

  test "should create fren" do
    visit frens_url
    click_on "New fren"

    fill_in "Email", with: @fren.email
    fill_in "First name", with: @fren.first_name
    fill_in "Last name", with: @fren.last_name
    click_on "Create Fren"

    assert_text "Fren was successfully created"
    click_on "Back"
  end

  test "should update Fren" do
    visit fren_url(@fren)
    click_on "Edit this fren", match: :first

    fill_in "Email", with: @fren.email
    fill_in "First name", with: @fren.first_name
    fill_in "Last name", with: @fren.last_name
    click_on "Update Fren"

    assert_text "Fren was successfully updated"
    click_on "Back"
  end

  test "should destroy Fren" do
    visit fren_url(@fren)
    click_on "Destroy this fren", match: :first

    assert_text "Fren was successfully destroyed"
  end
end
