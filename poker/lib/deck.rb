require_relative "card.rb"

class Deck
  attr_accessor :cards
  
  CARDS = {
    '♣️'=> %w(2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♦️'=> %w(2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♠️'=> %w(2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♥️'=> %w(2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨)
  }

  def initialize
    @cards = []
    CARDS.each do |suit, values|
      values.each do |val|
        @cards << Card.new(suit, val)
      end
    end
    @cards = @cards.shuffle
  end
  
  def print_func
      @cards.each do |card|
      print [card.suit, card.value]
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  u = Deck.new
  u.print_func
end