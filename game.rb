require './questions/questions'

class Game
  attr_accessor :current_player

  def initialize(current_player)
    @current_player = current_player
    @lives = 3
    @question_no = 0
  end

  def generate_question
    puts @question_no
    @questions[@question_no]
  end
end