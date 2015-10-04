require 'test_helper'

class PrintSchedulesControllerTest < ActionController::TestCase
  setup do
    @print_schedule = print_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_schedule" do
    assert_difference('PrintSchedule.count') do
      post :create, print_schedule: {  }
    end

    assert_redirected_to print_schedule_path(assigns(:print_schedule))
  end

  test "should show print_schedule" do
    get :show, id: @print_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @print_schedule
    assert_response :success
  end

  test "should update print_schedule" do
    patch :update, id: @print_schedule, print_schedule: {  }
    assert_redirected_to print_schedule_path(assigns(:print_schedule))
  end

  test "should destroy print_schedule" do
    assert_difference('PrintSchedule.count', -1) do
      delete :destroy, id: @print_schedule
    end

    assert_redirected_to print_schedules_path
  end
end
