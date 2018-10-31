require "practice"

describe "#remove_dups" do
  it "take out a duplicates from an array!!" do
    arr = [1, 2, 3, 3, 5, 6, 2]
    expect(remove_dups(arr)).to eq([1, 2, 3, 5, 6])
  end
end 


describe "#two_sum" do 
  it "return indices where sum of two value equal zero" do
    arr = [-1, 0, 2, -2, 1]
    expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  arr = [[0,1,2], [3,4,5], [6,7,8]]
  arr2 = [[0,3,6], [1,4,7], [2,5,8]]
  it "convert between the rows and cols" do
    expect(my_transpose(arr)).to eq(arr2)
  end
  
  it "it does not recieve #transpose method" do
    expect(my_transpose(arr)).to_not receive(:transpose)
  end
end

describe "#profitable_days" do
  stocks = [60, 10, 20, 40, 30, 10, 50]
  let(:opps) {profitable_days(stocks)}
  it "takes in an array" do 
    expect(opps).to be_a(Array)
  end
  
  it "returns indices in order" do 
    ordered = opps[0] < opps[1]
    expect(ordered).to eq(true)
  end
end
  