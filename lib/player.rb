class Player

    attr_reader :name, :symbol
    def initialize(name, symbol)
      @name = name
      @symbol = symbol
    end


    # Checking if the player's move is valid
    # move: player' move
    # board: array telling the current board state of the game

    def valid_move?(move, board)
      if move.to_i.to_s != move || move.to_i < 1 || move.to_i > 9
        puts "Invalid input, Please enter a number between 1 and 9."
        return false
      end

      cell_number = move.to_i - 1
      if board.empty?[cell_number]
        puts "The cell is already filled. Choose another cell."
        return false
      end

      true
    end



end



# player1 = Player.new("Alex", "X")
# player2 = Player.new("Khon", "O")
# puts player1.valid_move?(99, [1, 2, 3, 4, 5, 6, 7, 8, 9])
# puts player2
