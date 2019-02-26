require 'test_helper'

class GamePositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_position = game_positions(:one)
  end

  test "should get index" do
    get game_positions_url, as: :json
    assert_response :success
  end

  test "should create game_position" do
    assert_difference('GamePosition.count') do
      post game_positions_url, params: { game_position: { fen: @game_position.fen, game_id: @game_position.game_id, move_count: @game_position.move_count } }, as: :json
    end

    assert_response 201
  end

  test "should show game_position" do
    get game_position_url(@game_position), as: :json
    assert_response :success
  end

  test "should update game_position" do
    patch game_position_url(@game_position), params: { game_position: { fen: @game_position.fen, game_id: @game_position.game_id, move_count: @game_position.move_count } }, as: :json
    assert_response 200
  end

  test "should destroy game_position" do
    assert_difference('GamePosition.count', -1) do
      delete game_position_url(@game_position), as: :json
    end

    assert_response 204
  end
end
