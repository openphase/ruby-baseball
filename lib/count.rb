## Count class

class Count
  attr_reader :value, :resetValue, :countMax, :countValue
  
  def initialize(reset=0, countv=1, max=32656) 
    @resetValue = reset
    @countValue = countv
    @countMax = max
    @value = @resetValue
  end
  
  def inc
    @value += @countValue if @value <= countMax
  end
  
  def dec
    @value -= @countValue if @value > 0
  end
  
  def resetCount
    @value = @resetValue
  end 
    
end
