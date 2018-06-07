require "evenfib"

describe Fib do

  before(:all) do
    @total = Fib.new
  end

  it "should start with 1 then 2" do
    expect(@total.array[0]).to eq 1
    expect(@total.array[1]).to eq 2
  end

  it "should correctly add two numbers together" do
    expect(@total.gen_fib(1, 2)).to eq 3
  end

  it "should generate a valid Fibonacci sequence" do
    @total.gen_sequence 10
    expect(@total.array).to eq [1,2,3,5,8]
  end

  it "should not exceed 4 million" do
    @total.gen_sequence 4000000
    expect(@total.array.last).to be < 4000000
  end

  it "should have a sum of 4613732" do
    expect(@total.sum_fib).to eq 4613732
  end

end
