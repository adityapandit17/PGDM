require 'test_helper'

class AcademicSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @academic_session = academic_sessions(:one)
  end

  test "should get index" do
    get academic_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_academic_session_url
    assert_response :success
  end

  test "should create academic_session" do
    assert_difference('AcademicSession.count') do
      post academic_sessions_url, params: { academic_session: { from: @academic_session.from, title: @academic_session.title, to: @academic_session.to } }
    end

    assert_redirected_to academic_session_url(AcademicSession.last)
  end

  test "should show academic_session" do
    get academic_session_url(@academic_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_academic_session_url(@academic_session)
    assert_response :success
  end

  test "should update academic_session" do
    patch academic_session_url(@academic_session), params: { academic_session: { from: @academic_session.from, title: @academic_session.title, to: @academic_session.to } }
    assert_redirected_to academic_session_url(@academic_session)
  end

  test "should destroy academic_session" do
    assert_difference('AcademicSession.count', -1) do
      delete academic_session_url(@academic_session)
    end

    assert_redirected_to academic_sessions_url
  end
end
