RULES = {
  rock: :scissors,
  scissors: :paper,
  paper: :rock
}

INPUT_MAP = {
  r: :rock,
  p: :paper,
  s: :scissors
}

def countdown
  print "jan-"
  sleep 1
  print "ken-"
  sleep 1
  puts "pon!"
end

def get_player_move
  loop do
    print "Your move (r-ock, p-aper, s-cissors): "
    input = gets.chomp.downcase.to_sym
    return INPUT_MAP[input] if INPUT_MAP.key?(input)

    puts "Invalid input! Please enter 'r' for rock, 'p' for paper, or 's' for scissors."
  end
end

def play
  puts "Player 1, get ready!"
  countdown
  player1_move = get_player_move

  player2_move = [:rock, :paper, :scissors].sample
  puts "Player 2 chose #{player2_move}!"

  puts who_won(player1_move, player2_move)
end

def who_won(player1_move, player2_move)
  return "Draw!" if player1_move == player2_move

  if RULES[player1_move] == player2_move
    "Player 1 wins with #{player1_move}!"
  else
    "Player 2 wins with #{player2_move}!"
  end
end

play