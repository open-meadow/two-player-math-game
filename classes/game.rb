require "./classes/questions"

class Game
  def initialize(current_player)
    @current_player = current_player
  end

  def play      
      # Generate new question
      question = Questions.new()
      puts "#{@current_player.player}:", question.generate_question

      # Take user input
      answer = gets.chomp.to_i

      # Compare with answer
      verdict = question.correct_answer(answer)
      puts "#{@current_player.player}:", verdict

      # Reduce lives if verdict is wrong
      if verdict == "Wrong"
        @current_player.lives = @current_player.lives - 1
      end
  end
end