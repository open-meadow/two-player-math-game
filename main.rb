require "./questions/questions_p1"
require "./questions/questions_p2"

# puts "Hello world!"
# puts @questions_p1[0]


def chosen_question(question_number)
  question_number = question_number - 1
  @questions_p1[question_number]
end

def correct_answer(question, answer)
  if (question[:answer] == answer)
    return question[:correct_comment]
  else
    return question[:wrong_comment]
  end
end


puts "Pick your question "
question_number = gets.chomp.to_i
question =   chosen_question(question_number)
puts question
puts question[:question]
answer = gets.chomp.to_i
puts correct_answer(question, answer)