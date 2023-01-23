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

p1_game = Game.new(player1, @questions_p1)
p2_game = Game.new(player2, @questions_p2)
# puts "Game", p1_game


if current_player == player1
  question = p1_game.generate_question(player1.question_no)
  # puts "Player 1: ", question[:question]
  answer = gets.chomp.to_i
  # puts p1_game.correct_answer(question, answer)
  player1.question_no = player1.question_no + 1
  # puts player1.question_no
  current_player = player2
end

if current_player == player2
  question = p2_game.generate_question(player2.question_no)
  # puts "Player 2: ", question[:question]
  answer = gets.chomp.to_i
  # puts p2_game.correct_answer(question, answer)
  player2.question_no = player2.question_no + 1
  # puts player2.question_no
  current_player = player1
end