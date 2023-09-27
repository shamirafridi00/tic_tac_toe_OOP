require_relative 'player'
require_relative 'board'

class Game
  def initialize
    @player_x = Player.new('Player X', 'X')
    @player_o = Player.new('Player O', 'O')
    @current_player = @player_x
    @board = Board.new
  end

  def switch_player
    @current_player = (@current_player == @player_x) ? @player_o : @player_x
  end

  def play
    loop do
      @board.display
      puts "#{@current_player.name}'s turn (#{@current_player.symbol}):"
      row, col = get_move
      if @board.place_symbol(row, col, @current_player.symbol)
        if @board.win?(@current_player.symbol)
          @board.display
          puts "#{@current_player.name} wins!"
          break
        elsif @board.full?
          @board.display
          puts "It's a draw!"
          break
        else
          switch_player
        end
      else
        puts "Invalid move. Try again."
      end
    end
  end

  def get_move
    print "Enter row (0, 1, 2) and column (0, 1, 2) separated by a space: "
    gets.chomp.split.map(&:to_i)
  end
end
