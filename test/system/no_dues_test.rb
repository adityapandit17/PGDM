require "application_system_test_case"

class NoDuesTest < ApplicationSystemTestCase
  setup do
    @no_due = no_dues(:one)
  end

  test "visiting the index" do
    visit no_dues_url
    assert_selector "h1", text: "No Dues"
  end

  test "creating a No due" do
    visit no_dues_url
    click_on "New No Due"

    fill_in "Academic session", with: @no_due.academic_session_id
    fill_in "Subject ids", with: @no_due.subject_ids
    fill_in "User", with: @no_due.user_id
    click_on "Create No due"

    assert_text "No due was successfully created"
    click_on "Back"
  end

  test "updating a No due" do
    visit no_dues_url
    click_on "Edit", match: :first

    fill_in "Academic session", with: @no_due.academic_session_id
    fill_in "Subject ids", with: @no_due.subject_ids
    fill_in "User", with: @no_due.user_id
    click_on "Update No due"

    assert_text "No due was successfully updated"
    click_on "Back"
  end

  test "destroying a No due" do
    visit no_dues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "No due was successfully destroyed"
  end
end
