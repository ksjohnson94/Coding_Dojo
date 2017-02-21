class MathDojo
  attr_reader :sum
  def initialize
    @sum = 0
  end
  def add(*param)
    @sum = param.flatten.inject(@sum) { |sum, param| sum + param }
    self
  end
  def subtract(*param)
    @sum = param.flatten.inject(@sum) { |sum, param| sum - param }
    self
  end
end
puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).sum
