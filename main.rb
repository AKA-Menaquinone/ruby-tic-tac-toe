require_relative 'lib/player'

puts 'Enter Player 1\'s Name:'
player1 = Player.new(gets.chomp)

puts 'Enter Player 2\'s Name:'
player2 = Player.new(gets.chomp)

p player1
p player2