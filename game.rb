class Game
  attr_accessor :current_player

  def initialize(current_player, questions)
    @current_player = current_player
    @lives = 3
    @question_no = 0
    @questions = questions
  end

  def generate_question
    puts @question_no
    @questions[@question_no]
  end

  def correct_answer(question, answer)
    if (question[:answer] == answer)
      return question[:correct_comment]
    else
      return question[:wrong_comment]
    end
  end
end