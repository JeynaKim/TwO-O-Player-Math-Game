class Question
  attr_reader :text, :answer
  def initialize
    @number1 = rand(1..10)
    @number2 = rand(1..10)
    @text =  "What does #{@number1} plus #{@number2} equal?"
    @answer = @number1 + @number2
  end

  def correct_answer(number)
    number == @answer
  end 
end

