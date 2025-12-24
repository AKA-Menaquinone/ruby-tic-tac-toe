class Board
  attr_accessor :state
  attr_reader :isGameOver

  def initialize
    @state = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @state.each do |inner_array|
      puts inner_array.join(' ')
    end
  end

  def isGameOver?
    
  end
end