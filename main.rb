require "./questions/questions_p1"
require "./questions/questions_p2"
require "./classes/player"
require "./classes/game"

# puts "Hello world!"
# puts @questions_p1[0]

# current_player = 1;

# def chosen_question(question_number)
#   question_number = question_number - 1
#   @questions_p1[question_number]
# end

# def correct_answer(question, answer)
#   if (question[:answer] == answer)
#     return question[:correct_comment]
#   else
#     return question[:wrong_comment]
#   end
# end


# puts "Pick your question "
# question_number = gets.chomp.to_i
# question =   chosen_question(question_number)
# puts question
# puts question[:question]
# answer = gets.chomp.to_i
# puts correct_answer(question, answer)

# initialize classes
player1 = Player.new("player 1")
player2 = Player.new("player 2")

# puts "HERE", player1.lives
# puts player2.lives

current_player = player1
game = Game.new(current_player, @questions_p1)
# puts "Game", p1_game

question = game.generate_question(current_player.question_no)
puts current_player.player, question[:question]
answer = gets.chomp.to_i
# answer_check = game.correct_answer(question, answer, current_player.lives)
puts game.correct_answer(question, answer, current_player.lives)
puts current_player.lives, "lives"
current_player.question_no = current_player.question_no + 1
# puts player1.question_no

if current_player == player1
  current_player = player2
else
  current_player = player1
end
