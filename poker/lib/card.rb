require_relative "deck"

class Card
  attr_reader :suit, :value
  
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ranking
    case @value
    when "𝑨"
      result = 14
    when "𝐊"
      result = 13
    when "𝑸"
      result = 12
    when "𝑱"
      result = 11
    else
      result = value.to_i
    end
    result
  end
  
end  