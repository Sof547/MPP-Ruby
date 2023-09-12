#Зробити невелику скрипт гру "камні ножиці папір".
# На вхід передаємо предмет у вигляді аргументу командного рядка
# На виході результат
#
# EX:
# input --> ruby game.rb Stone Paper
# output --> You lose

# key wins value
# if the key has no opponent in values -> the key player has lost
WINNERS = {}
WINNERS.store("scissors", "paper")
WINNERS.store("stone", "scissors")
WINNERS.store("paper", "stone")

# main game function
def game (players)
  if players.size < 2
    puts 'Need at least 2 arguments'
    exit
  elsif players.length.even?
    play_even_number_of_rounds players
  else
    play_odd_number_of_players players
  end
end

# even number of players
# 0 vs 1, 2 vs 3, 4 vs 5, etc
def play_even_number_of_rounds(players)
  for i in (0..players.length-1).step 2
    winner = determine_winner(players[i], players[i + 1])
    # stop the game if incorrect data was entered
    unless winner
      break
    end
  end
end

# odd number of players
# 0 vs 1, 2 vs 3, 4 vs 5,..., (n-2 vs n-1) vs n
def play_odd_number_of_players(players)
  winner = ""
  tabs = "" # for visual difference with (n-2 vs n-1) winner
  for i in (0..players.length-1).step 2
    if players[i] && players[i + 1]
      winner = determine_winner(players[i], players[i + 1])
      # stop the game if incorrect data was entered
      unless winner
        break
      end
    else
      tabs += "\t\t"
      print tabs
      determine_winner(winner, players[i])
      break
    end
  end
end

# winner in a pair
def determine_winner(player1, player2)
  # check input
  if !(WINNERS[player1] == nil || WINNERS[player2] == nil)
    player1 = player1.downcase
    player2 = player2.downcase
    if WINNERS[player1] == player2
      puts "#{player1} vs #{player2} -> #{player1} won!"
      return player1
    elsif WINNERS[player2] == player1
      puts "#{player1} vs #{player2} -> #{player2} won!"
      return player2
    else
      puts "#{player1} vs #{player2} -> Tie!"
      return player1
    end
  else
    puts 'Incorrect input'
    nil
  end
end

game ARGV
