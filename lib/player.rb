class Player
  attr_reader :name

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def takeTurn(choice, board)
    board.map! do |row|
      row.map! do |col|
        if choice == col
          col = @symbol
        else
          col = col
        end
      end
    end
  end
end