class Board
  def initialize
    @cells = Array.new(9, ' ')  # [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts '-----------'
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts '-----------'
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    puts '-----------'
  end

  def update_cell(position, symbol)
    if valid_position?(position)
      @cells[position - 1] = symbol
      display
    end

  end

  def valid_position?(position)
    position.between?(1,9) && @cells[position - 1] == ' '
  end

  def current_state
    @cells.dup  # Return a duplicate of the @cells array to avoid modifying the original
  end

  def check_win?(symbol)
    WINNING_COMBINATIONS.any? do |combination|
      combination.all? { |position| @cells[position - 1] == symbol}
    end
  end

  def check_draw?
    @cells.none? {|cell| cell == ' '}
  end


  private
  WINNING_COMBINATIONS = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9],  # rows
    [1, 4, 7], [2, 5, 8], [3, 6, 9],  # columns
    [1, 5, 9], [3, 5, 7] # diagonals
  ]



end


dd = Board.new
puts dd.display
dd.update_cell(1, 'X')
dd.update_cell(2, 'X')
dd.update_cell(3, 'X')
puts dd.display
puts dd.check_win?('X')
