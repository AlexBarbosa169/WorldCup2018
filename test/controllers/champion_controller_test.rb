require 'test_helper'

class ChampionControllerTest < ActionDispatch::IntegrationTest
  test "should get champion" do
    get champion_champion_url
    assert_response :success
  end

end
