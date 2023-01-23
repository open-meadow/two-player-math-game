require "./classes/player"
require "./classes/game"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
current_player = player1

while player1.lives > 0 && player2.lives > 0
  puts "---NEW TURN---"
  game = Game.new(current_player)
  game.play

  # Show both points
  puts "P1: #{player1.lives} vs P2: #{player2.lives}"

  # if current player is player1, change to player 2 and vice versa
  current_player = (current_player == player1) ? player2 : player1
  puts "---END OF TURN---"

  # If player 1 reaches 0, player 2 still needs to play a turn in case there is a draw
  if (player1.lives == 0 && current_player == player2)
    game = Game.new(current_player)
    game.play
  end

end

# Show winner
if (player1.lives == 0 && player2.lives == 0)
  puts "Draw"
else
  puts (player1.lives > 0) ? "#{player1.player} wins with a score of #{player1.lives}/3" : "#{player2.player} wins with a score of #{player2.lives}/3"
end

puts "---------GAME OVER---------"
puts "Good Bye!"

