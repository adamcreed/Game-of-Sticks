class GameOfSticks

  attr_reader :player_count, :stick_count
  attr_accessor :sticks_remaining, :current_turn

  def initialize(options)
    @player_count = options[:player_count]
    @stick_count = options[:stick_count]
    @sticks_remaining = @stick_count
    @max_removable_sticks = 3
    @current_turn = rand(1..2)
  end

  def remove_sticks(number)
    @sticks_remaining -= number
  end

  def max_remove_allowed
    if @max_removable_sticks > @sticks_remaining
       @sticks_remaining
     else
       @max_removable_sticks
     end
  end

  def print_status
    print "It is player #{@current_turn}'s turn. " \
          "Sticks remaining: #{@sticks_remaining}. " \
          "You can remove 1-#{max_remove_allowed} sticks: "
  end
end

def is_in_bounds?(number, range)
  range.include?(number.to_i) ? true : false
end
