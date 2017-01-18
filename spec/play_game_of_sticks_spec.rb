require 'play_game_of_sticks'

describe '#get_yes_or_no' do
  context 'When y or n is passed' do
    it 'Returns the letter entered if it is y or n' do
      expect(get_yes_or_no('y')).to eq 'y'
      expect(get_yes_or_no('n')).to eq 'n'
    end
  end

  context 'When something else is entered' do
    it 'Returns an empty string when something else is entered' do
      expect(get_yes_or_no('s')).to eq ''
    end
  end
end

describe '#play_again?' do
  context 'Only y or n will be passed due to the above function' do
    it 'Returns true if y is entered' do
      expect(play_again?('y')).to be true
    end

    it 'Returns false when n is entered' do
      expect(play_again?('n')).to be false
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
