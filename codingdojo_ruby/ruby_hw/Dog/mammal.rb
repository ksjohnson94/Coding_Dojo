class Mammal

  attr_accessor :health
  def initialize health = 170
    @health = health
  end
  def display_health
    puts @health
  end
end
