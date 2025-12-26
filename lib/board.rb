class Board
  attr_accessor :state

  def initialize
    @state = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @state.each do |inner_array|
      puts inner_array.join(' ')
    end
  end

  def printBoard
    @state.each do |inner_array|
      puts inner_array.join(' ')
    end
  end

  def isGameOver?
    if self.state[0][0] == self.state[1][0] and self.state[0][0] == self.state[2][0]
      true
    elsif self.state[0][1] == self.state[1][1] and self.state[0][1] == self.state[2][1]
      true
    elsif self.state[0][2] == self.state[1][2] and self.state[0][2] == self.state[2][2]
      true
    elsif self.state[0][0] == self.state[0][1] and self.state[0][0] == self.state[0][2]
      true
    elsif self.state[1][0] == self.state[1][1] and self.state[1][0] == self.state[1][2]
      true
    elsif self.state[2][0] == self.state[2][1] and self.state[2][0] == self.state[2][2]
      true
    elsif self.state[0][0] == self.state[1][1] and self.state[0][0] == self.state[2][2]
      true
    elsif self.state[0][2] == self.state[1][1] and self.state[0][2] == self.state[2][0]
      true
    else
      false
    end
  end
end