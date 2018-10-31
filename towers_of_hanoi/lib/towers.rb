class Game
  attr_reader :grid

  def initialize
    @grid = Array.new(2) { [] }
    @grid.unshift([1, 2, 3])
    p @grid
  end
  
  
  
  
end