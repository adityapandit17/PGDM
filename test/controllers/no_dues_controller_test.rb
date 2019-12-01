require 'test_helper'

class NoDuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_due = no_dues(:one)
  end

  test "should get index" do
    get no_dues_url
    assert_response :success
  end

  test "should get new" do
    get new_no_due_url
    assert_response :success
  end

  test "should create no_due" do
    assert_difference('NoDue.count') do
      post no_dues_url, params: { no_due: { academic_session_id: @no_due.academic_session_id, subject_ids: @no_due.subject_ids, user_id: @no_due.user_id } }
    end

    assert_redirected_to no_due_url(NoDue.last)
  end

  test "should show no_due" do
    get no_due_url(@no_due)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_due_url(@no_due)
    assert_response :success
  end

  test "should update no_due" do
    patch no_due_url(@no_due), params: { no_due: { academic_session_id: @no_due.academic_session_id, subject_ids: @no_due.subject_ids, user_id: @no_due.user_id } }
    assert_redirected_to no_due_url(@no_due)
  end

  test "should destroy no_due" do
    assert_difference('NoDue.count', -1) do
      delete no_due_url(@no_due)
    end

    assert_redirected_to no_dues_url
  end
end
