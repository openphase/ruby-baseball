## Count class

class Count
  attr_reader :value, :resetValue, :countMax
  
  def initialize(reset=0, max=32656) 
    @resetValue = reset
    @countMax = max
    @value = @resetValue
  end
  
  def inc
    @value += 1 if @value <= countMax
  end
  
  def dec
    @value -= 1 if @value > 0
  end
  
  def resetCount
    @value = @resetValue
  end 
    
end
