require 'test_helper'

class AvailableSchedulesControllerTest < ActionController::TestCase
  setup do
    @available_schedule = available_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_schedule" do
    assert_difference('AvailableSchedule.count') do
      post :create, available_schedule: {  }
    end

    assert_redirected_to available_schedule_path(assigns(:available_schedule))
  end

  test "should show available_schedule" do
    get :show, id: @available_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_schedule
    assert_response :success
  end

  test "should update available_schedule" do
    patch :update, id: @available_schedule, available_schedule: {  }
    assert_redirected_to available_schedule_path(assigns(:available_schedule))
  end

  test "should destroy available_schedule" do
    assert_difference('AvailableSchedule.count', -1) do
      delete :destroy, id: @available_schedule
    end

    assert_redirected_to available_schedules_path
  end
end
