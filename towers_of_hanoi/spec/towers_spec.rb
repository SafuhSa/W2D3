require "towers"

describe "#initialize" do
  subject(:game) {Game.new}
  it "sets an array of three towers" do
    expect(game.grid.length).to eq(3)
  end
  
  it "sets the first tower to hold 3 discs" do
    expect(game.grid[0].length).to eq(3)
  end
  
  it "makes sure other two towers are empty" do
    expect(game.grid[1]).to be_empty
    expect(game.grid[2]).to be_empty
  end  
end

describe "#won?" do
  subject(:game) {Game.new}
  grid = [[], [3,2,1], []]
end



# subject(:game) {Game.new}
