require_relative 'game_of_sticks'

def main
  play_again = true
  while play_again
    play_game

    print 'Play again? '
    answer = ''
    while answer.empty?
      answer = get_yes_or_no(get_first_char)
      print 'Please enter yes or no ' if answer.empty?
    end
    play_again = play_again?(answer)
  end
end

def play_game
  player_count = get_player_count
  stick_count = get_stick_count
  game = GameOfSticks.new(player_count: player_count, stick_count: stick_count)

  until game.sticks_remaining <= 0
    game.print_status

    take_turn(game)
  end
end

def take_turn(game)
  sticks_to_remove = get_sticks_removed(game)
  game.remove_sticks(sticks_to_remove)
end

def get_first_char
  gets.chomp.downcase[0]
end

def get_yes_or_no(first_letter)
    (first_letter == 'y' or first_letter == 'n') ? first_letter : ''
end

def get_sticks_removed(game)
  until is_in_bounds?(sticks = gets.chomp.to_i, 1..game.max_remove_allowed)
    print "Please enter 1-#{game.max_remove_allowed}: "
  end

  sticks
end

def play_again?(answer)
  answer == 'y' ? true : false
end

def get_player_count
  valid_players = 1..2

  print "Enter number of players (#{valid_players.min}-#{valid_players.max}): "

  until is_in_bounds?(player_count = gets.chomp.to_i, valid_players)
    print "Please enter #{valid_players.min}-#{valid_players.max}: "
  end

  player_count
end

def get_stick_count
  valid_sticks = 10..100

  print "Enter starting number of sticks " \
        "(#{valid_sticks.min}-#{valid_sticks.max}): "

  until is_in_bounds?(stick_count = gets.chomp.to_i, valid_sticks)
    print "Please enter #{valid_sticks.min}-#{valid_sticks.max}: "
  end

  stick_count
end

main if __FILE__ == $PROGRAM_NAME
