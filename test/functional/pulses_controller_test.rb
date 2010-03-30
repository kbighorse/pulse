require 'test_helper'

class PulsesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pulses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pulse" do
    assert_difference('Pulse.count') do
      post :create, :pulse => { }
    end

    assert_redirected_to pulse_path(assigns(:pulse))
  end

  test "should show pulse" do
    get :show, :id => pulses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pulses(:one).to_param
    assert_response :success
  end

  test "should update pulse" do
    put :update, :id => pulses(:one).to_param, :pulse => { }
    assert_redirected_to pulse_path(assigns(:pulse))
  end

  test "should destroy pulse" do
    assert_difference('Pulse.count', -1) do
      delete :destroy, :id => pulses(:one).to_param
    end

    assert_redirected_to pulses_path
  end
end
