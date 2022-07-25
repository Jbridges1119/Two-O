
class Player
  attr_accessor :life
  def initialize()
    @life = 3
  end
  def lose_life()
    @life -= 1
end
# player 
# players role
# store  
# - life

# action 
# - update life

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



class Logic

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @turn = 1

  def ask_question
    question = Question.new()
    puts "Player #{@turn}: " question.question()
    print "> "
    choice = $stdin.gets.chomp
    if choice == question.answer()
      self.right()
    else 
      self.wrong()
    end
  end

  def right
    puts "Player #{@turn}: YES! You are correct."
    self.score()
  end 

  def score
    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    puts "----- NEW TURN -----"
    if @turn == 1
    @turn = 2
    else 
      @turn = 1
    end
    self.ask_question()
  end

  def wrong
    if @turn == 2
    @player2.lose_life()
    puts "Player #{@turn}: Seriously? No!"
    if @player2.life == 0 
      "Player 1 wins with a score of #{@player1.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else 
    self.score()
    end
  end
end



# logic
# store
# - turn
# -player sting
# -score string
# -new turn string
# -wrong/write string
# - player wins game over good bye string
# -user input?


# action
# - cycle turn starting with player num and question
# -compare input to answer
# - player num correct/wrong
# - check to see if play is 0 
#       - if yes end game with player wins string
# -if no, new turn string
# - repeat with other player

# Player 1: What does 5 plus 3 equal?
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# Player 2: What does 2 plus 6 equal?
# > 8
# Player 2: YES! You are correct.
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# ... some time later ...
# Player 1 wins with a score of 1/3
# ----- GAME OVER -----
# Good bye!