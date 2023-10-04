require_relative 'board'
require_relative 'player'


class Game

  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
    @current_player = @player1
  end


  def start
    puts "Welcome to Tic Tac Toe!"
    @board.display
    loop do
      player_move
      break if game_over?

      switch_player
    end

    # Display the final board state and game result
    @board.display
    display_game_result
    puts "Thank you for playing!"
  end


  def player_move
    puts "#{@current_player.name}, it's your turn (#{@current_player.symbol}):"
    loop do
      move = gets.chomp.to_i
      if @board.valid_position?(move)
        @board.update_cell(move, @current_player.symbol)
        break
      else
        puts "Invalid move! Please try again."
      end
    end
  end


  def game_over?
    @board.check_win?(@current_player.symbol) || @board.check_draw?
  end


  def switch_player
    @current_player = (@current_player == @player1)? @player2 : @player1
  end

  def display_game_result
    if @board.check_win?(@current_player.symbol)
      puts "#{@current_player.name} has won!"
    else
      puts "It's a tie!"
    end
  end

end
