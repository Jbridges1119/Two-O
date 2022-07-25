class Question
  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end
  def question()
    put "What does #{@num1} plus #{@num2} equal?"
  end
  def answer
    answer = @num1 + @num2
  end
end
# question
# store 
# - question string 
# - 2 variable that change numbers

# action 
# - ask question with 2 numbers 