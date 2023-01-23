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
end

# Show winner
puts (player1.lives > 0) ? "#{player1.player} wins with a score of #{player1.lives}/3" : "#{player2.player} wins with a score of #{player2.lives}/3"
puts "---------GAME OVER---------"
puts "Good Bye!"

