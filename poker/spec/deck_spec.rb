require "deck"

describe "Deck" do
  subject (:deck) { Deck.new }
  
  describe "#initialize" do
    it "provides a deck of 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
    
    it "create a new instances of cards" do
      expect(deck.cards.first).to be_a(Card)
      expect(deck.cards.last).to be_a(Card)
    end
    
  end
  
  
  
  
end