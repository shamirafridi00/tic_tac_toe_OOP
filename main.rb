if __FILE__ == $PROGRAM_NAME
  require_relative 'lib/board'
  require_relative 'lib/player'
  require_relative 'lib/game'

  game = Game.new
  game.play

end
