# spec for count class

require "minitest/autorun"
require_relative "../lib/count.rb"

describe "Count", "I am the Count" do
  
  let(:count) { Count.new }

  it "has a value which initially equals 0" do
    count.value.must_equal 0
  end
  
  it "can increment its value by 1" do
    count.inc
    count.value.must_equal 1
  end
  
  it "can decrement its value by 1" do
    count.dec
    count.value.must_equal 0
  end
  
  it "cannot decrement below 0" do
    count.dec
    count.value.must_equal 0
  end
  
  it "can reset its value to 0" do 
    count.inc
    count.inc
    count.resetCount
    count.value.must_equal 0
  end

end
