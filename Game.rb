class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def switch_turn 
    if @current_player == @player1 
      @current_player = @player2
    else 
      @current_player = @player1  
    end
  end

  def start_game
    @question = Question.new
    puts @question.text
    input = gets.chomp.to_i
    if input == @question.answer
    puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      @current_player.reduce_lives
    end
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    if @current_player.lives < 1
      puts "----- GAME OVER -----"
    else 
      switch_turn
      puts "----- NEW TURN -----"
      start_game
    end 
  end
end


