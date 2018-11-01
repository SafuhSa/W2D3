require "card.rb"

describe Card do
  
  subject(:card) { Card.new('hi', 5) }
    
  describe "#initialize" do
    it "take a suit" do
      expect(card.suit).to_not be_empty
    end
    it "takes a value" do
      expect(card.value).to_not be_nil
    end
  end
  
  describe "#ranking" do
    it "convert a string of value to a integer" do
      expect(card.ranking).to be_a(Integer)
    end
  end
end