require "application_system_test_case"

class AcademicSessionsTest < ApplicationSystemTestCase
  setup do
    @academic_session = academic_sessions(:one)
  end

  test "visiting the index" do
    visit academic_sessions_url
    assert_selector "h1", text: "Academic Sessions"
  end

  test "creating a Academic session" do
    visit academic_sessions_url
    click_on "New Academic Session"

    fill_in "From", with: @academic_session.from
    fill_in "Title", with: @academic_session.title
    fill_in "To", with: @academic_session.to
    click_on "Create Academic session"

    assert_text "Academic session was successfully created"
    click_on "Back"
  end

  test "updating a Academic session" do
    visit academic_sessions_url
    click_on "Edit", match: :first

    fill_in "From", with: @academic_session.from
    fill_in "Title", with: @academic_session.title
    fill_in "To", with: @academic_session.to
    click_on "Update Academic session"

    assert_text "Academic session was successfully updated"
    click_on "Back"
  end

  test "destroying a Academic session" do
    visit academic_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Academic session was successfully destroyed"
  end
end
