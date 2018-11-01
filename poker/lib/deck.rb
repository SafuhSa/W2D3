require_relative "card.rb"

class Deck
  CARDS = {
    '♣️'=> %w(1 2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♦️'=> %w(1 2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♠️'=> %w(1 2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨),
    '♥️'=> %w(1 2 3 4 5 6 7 8 9 10 𝑱 𝑸 𝐊 𝑨)
  }

  def initialize
    @deck = []
    CARDS.each do |suit, values|
      values.each do |val|
        @deck << Card.new(suit, val)
      end
    end
    @deck = @deck.shuffle
  end
  
  def print_func
      @deck.each do |card|
      print [card.suit, card.value]
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  u = Deck.new
  u.print_func
end