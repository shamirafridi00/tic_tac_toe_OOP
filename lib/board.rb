# board.rb
class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, ' ') }
  end

  def display
    puts "  0 1 2"
    @grid.each_with_index do |row, i|
      print "#{i} "
      puts row.join('|')
      puts "  -----" unless i == 2
    end
  end

  def place_symbol(row, col, symbol)
    if valid_move?(row, col) && @grid[row][col] == ' '
      @grid[row][col] = symbol
      true
    else
      false
    end
  end

  def valid_move?(row, col)
    row.between?(0, 2) && col.between?(0, 2)
  end

  def full?
    @grid.all? { |row| row.none?(' ') }
  end

  def win?(symbol)
    # Check rows, columns, and diagonals for a win
    win_by_rows?(symbol) || win_by_columns?(symbol) || win_by_diagonals?(symbol)
  end

  private

  def win_by_rows?(symbol)
    @grid.any? { |row| row.all?(symbol) }
  end

  def win_by_columns?(symbol)
    @grid.transpose.any? { |col| col.all?(symbol) }
  end

  def win_by_diagonals?(symbol)
    left_diagonal = (0..2).map { |i| @grid[i][i] }
    right_diagonal = (0..2).map { |i| @grid[i][2 - i] }
    left_diagonal.all?(symbol) || right_diagonal.all?(symbol)
  end

end
