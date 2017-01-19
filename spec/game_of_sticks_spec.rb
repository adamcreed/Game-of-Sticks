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

  describe '#remove_sticks' do
    it 'Decreases the number of sticks remaining' do
      game.sticks_remaining = 10
      game.remove_sticks(2)

      expect(game.sticks_remaining).to eq 8
    end
  end

  describe '#max_remove_allowed' do
    context 'When there is fewer than three sticks remaining' do
      it 'Adjusts the max number of sticks that can be removed' do
        game.sticks_remaining = 2

        expect(game.max_remove_allowed).to eq 2
      end
    end
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
