# @questions_p1 = [
#   {
#     id: 1,
#     question: "What is 1 + 1?",
#     answer: 2,
#     correct_comment: "You're so smart!",
#     wrong_comment: "It's okay, everybody starts somewhere!"
#   },
#   {
#     id: 2,
#     question: "What is p vs np?",
#     answer: nil,
#     correct_comment: nil,
#     wrong_comment: "You're worthless!",
#   }
# ]

class Questions
  def initialize
    @num1 = rand(21).to_i
    @num2 = rand(21).to_i
    @sum = @num1 + @num2
  end

  def generate_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def correct_answer(answer)
    if (answer == @sum)
      return "Correct"
    else
      return "Wrong"
    end
  end
end
