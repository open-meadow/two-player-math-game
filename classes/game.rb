class Game
  attr_accessor :current_player

  def initialize(current_player, questions)
    @current_player = current_player
    @questions = questions
  end

  def generate_question(question_no)
    # puts @question_no
    # @question_no = @question_no + 1
    @questions[question_no]
  end

  def correct_answer(question, answer)
    if (question[:answer] == answer)
      return question[:correct_comment]
    else
      return question[:wrong_comment]
    end
  end
end