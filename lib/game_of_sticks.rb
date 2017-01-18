class GameOfSticks

  attr_reader :player_count, :stick_count

  def initialize(options)
    @player_count = options[:player_count]
    @stick_count = options[:stick_count]
  end
end

def is_in_bounds?(number, range)
  range.include?(number) ? true : false
end
