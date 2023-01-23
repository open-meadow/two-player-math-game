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
