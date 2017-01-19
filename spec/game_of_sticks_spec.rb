require 'game_of_sticks'

describe 'GameOfSticks' do
  game = GameOfSticks.new(player_count: 2, stick_count: 10)

  describe '#new' do
    it 'Creates a new GameOfSticks object with a number of players and sticks.' do
      expect(game.player_count).to be 2
      expect(game.stick_count).to be 10
    end
  end

  describe '#change_turn' do
    it 'Changes the active player.' do
      game.current_turn = 1
      game.change_turn

      expect(game.current_turn).to eq 2
    end
  end
end
