require 'game_of_sticks'

describe 'GameOfSticks' do
  describe '#new' do
    it 'Creates a new GameOfSticks object with a number of players and sticks.' do
      game = GameOfSticks.new(player_count: 2, stick_count: 10)

      expect(game.player_count).to be 2
      expect(game.stick_count).to be 10
    end
  end

  describe '#is_in_bounds?' do
    it 'Checks for an integer within certain bounds' do
      expect(is_in_bounds?(50, 10..99)).to be true
    end
    it 'Returns false when an integer outside the given bounds is provided' do
      expect(is_in_bounds?(50, 1..2)).to be false
    end
  end
end
