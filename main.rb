require_relative 'lib/player'
require_relative 'lib/board'

turns = 0

puts 'Enter Player 1\'s Name:'
player1 = Player.new(gets.chomp, 'X')

puts 'Enter Player 2\'s Name:'
player2 = Player.new(gets.chomp, 'O')

board = Board.new

while board.isGameOver? == false do
  puts "#{player1.name}, Enter your move."
  player1.takeTurn(gets.chomp.to_i, board.state)
  board.printBoard

  turns += 1

  if board.isGameOver? == true
    return puts "#{player1.name} wins!"
  end

  if turns == 9
    return puts 'Game is tied.'
  end

  puts "#{player2.name}, Enter your move."
  player2.takeTurn(gets.chomp.to_i, board.state)
  board.printBoard

  turns += 1

  if board.isGameOver? == true
    return puts "#{player2.name} wins!"
  end
end