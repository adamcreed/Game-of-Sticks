require 'game_of_sticks'

describe 'GameOfSticks' do
  describe '#new' do
    it 'Creates a new GameOfSticks object with a number of players and sticks.' do
      game = GameOfSticks.new(player_count: 2, stick_count: 10)

      expect(game.player_count).to be 2
      expect(game.stick_count).to be 10
    end
  end
end