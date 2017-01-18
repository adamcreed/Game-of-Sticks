require_relative 'game_of_sticks'

def main
  play_again = true
  while play_again
    play_game

    print 'Play again? '
    answer = ''
    while answer.empty?
      answer = get_yes_or_no
      print 'Please enter yes or no ' if answer.empty?
    end
    play_again = play_again?(answer)
  end
end

def play_game
end

def get_yes_or_no
    answer = gets.chomp.downcase[0]
    (answer == 'y' or answer == 'n') ? answer : ''
end

def play_again?(answer)
  answer == 'y' ? true : false
end

main if __FILE__ == $PROGRAM_NAME
