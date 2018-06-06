require "3and5"

describe Multiples do

  before(:all) do
    @total = Multiples.new
  end

  it "should respond true if a number is divisible by 3" do
    expect(@total.divisible_by?(3, 3)).to be true
  end

  it "should respond true if a number is divisible by 5" do
    expect(@total.divisible_by?(10, 5)).to be true
  end

  it "should respond false if a number is neither divisible by 3" do
    expect(@total.divisible_by?(5, 3)).to be false
  end

  it "should respond false if a number is neither divisible by 5" do
    expect(@total.divisible_by?(9, 5)).to be false
  end

  it "should add multiples of 3 and 5 together" do
    expect(@total.create_array 1, 1000).to eq 233168
  end

end
