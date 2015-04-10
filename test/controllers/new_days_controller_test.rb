require 'test_helper'

class NewDaysControllerTest < ActionController::TestCase
  setup do
    @new_day = new_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_day" do
    assert_difference('NewDay.count') do
      post :create, new_day: { comment: @new_day.comment, date: @new_day.date }
    end

    assert_redirected_to new_day_path(assigns(:new_day))
  end

  test "should show new_day" do
    get :show, id: @new_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_day
    assert_response :success
  end

  test "should update new_day" do
    patch :update, id: @new_day, new_day: { comment: @new_day.comment, date: @new_day.date }
    assert_redirected_to new_day_path(assigns(:new_day))
  end

  test "should destroy new_day" do
    assert_difference('NewDay.count', -1) do
      delete :destroy, id: @new_day
    end

    assert_redirected_to new_days_path
  end
end
