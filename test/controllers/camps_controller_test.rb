require 'test_helper'

class CampsControllerTest < ActionController::TestCase
  setup do
    @camp = camps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camp" do
    assert_difference('Camp.count') do
      post :create, camp: { age_max: @camp.age_max, age_min: @camp.age_min, end_time: @camp.end_time, ext_end_time: @camp.ext_end_time, ext_start_time: @camp.ext_start_time, location: @camp.location, lunch_fee: @camp.lunch_fee, member_fee: @camp.member_fee, name: @camp.name, non_member_fee: @camp.non_member_fee, start_time: @camp.start_time, theme: @camp.theme, two_week: @camp.two_week }
    end

    assert_redirected_to camp_path(assigns(:camp))
  end

  test "should show camp" do
    get :show, id: @camp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camp
    assert_response :success
  end

  test "should update camp" do
    patch :update, id: @camp, camp: { age_max: @camp.age_max, age_min: @camp.age_min, end_time: @camp.end_time, ext_end_time: @camp.ext_end_time, ext_start_time: @camp.ext_start_time, location: @camp.location, lunch_fee: @camp.lunch_fee, member_fee: @camp.member_fee, name: @camp.name, non_member_fee: @camp.non_member_fee, start_time: @camp.start_time, theme: @camp.theme, two_week: @camp.two_week }
    assert_redirected_to camp_path(assigns(:camp))
  end

  test "should destroy camp" do
    assert_difference('Camp.count', -1) do
      delete :destroy, id: @camp
    end

    assert_redirected_to camps_path
  end
end
