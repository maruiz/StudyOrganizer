require 'test_helper'

class StudyEntriesControllerTest < ActionController::TestCase
  setup do
    @study_entry = study_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:study_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study_entry" do
    assert_difference('StudyEntry.count') do
      post :create, study_entry: { end: @study_entry.end, start: @study_entry.start, task_id: @study_entry.task_id }
    end

    assert_redirected_to study_entry_path(assigns(:study_entry))
  end

  test "should show study_entry" do
    get :show, id: @study_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_entry
    assert_response :success
  end

  test "should update study_entry" do
    patch :update, id: @study_entry, study_entry: { end: @study_entry.end, start: @study_entry.start, task_id: @study_entry.task_id }
    assert_redirected_to study_entry_path(assigns(:study_entry))
  end

  test "should destroy study_entry" do
    assert_difference('StudyEntry.count', -1) do
      delete :destroy, id: @study_entry
    end

    assert_redirected_to study_entries_path
  end
end
