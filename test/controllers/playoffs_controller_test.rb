require 'test_helper'

class PlayoffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playoff = playoffs(:one)
  end

  test "should get index" do
    get playoffs_url
    assert_response :success
  end

  test "should get new" do
    get new_playoff_url
    assert_response :success
  end

  test "should create playoff" do
    assert_difference('Playoff.count') do
      post playoffs_url, params: { playoff: { fase: @playoff.fase, tournament_id: @playoff.tournament_id } }
    end

    assert_redirected_to playoff_url(Playoff.last)
  end

  test "should show playoff" do
    get playoff_url(@playoff)
    assert_response :success
  end

  test "should get edit" do
    get edit_playoff_url(@playoff)
    assert_response :success
  end

  test "should update playoff" do
    patch playoff_url(@playoff), params: { playoff: { fase: @playoff.fase, tournament_id: @playoff.tournament_id } }
    assert_redirected_to playoff_url(@playoff)
  end

  test "should destroy playoff" do
    assert_difference('Playoff.count', -1) do
      delete playoff_url(@playoff)
    end

    assert_redirected_to playoffs_url
  end
end
