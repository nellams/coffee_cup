
class CoffeeCup
  attr_reader :capacity, :fill
  def initialize(capacity = 12, fill = 8)
    while capacity && capacity < 2
      puts "Error: Cup must have a greater capacity than 2 oz. Please re-enter the capacity."
      capacity = gets.chomp.to_i
    end
    @capacity = capacity
    while fill && fill >= @capacity
      puts "Error: Cannot overfill. Re-enter amount to fill."
      fill = gets.chomp.to_i
    end
      @fill = fill
  end

  def sip!(oz)
    if @fill < oz
      @fill = 0
      puts "Hey! You need a refill!"
    else
      @fill -= oz
    end
  end

  def spill!
    @fill = 0
  end

  def refill!
    @fill = capacity - 2
  end
end
# a = CoffeeCup.new(8, 7)
# puts "Your cup has a capacity of #{a.capacity} oz. and is filled to #{a.fill} oz."
#  a.sip!(2)
# puts "*takes a drink*"
# puts "Your cup has #{a.fill} oz. of coffee in it."
# a.spill!
# puts "Someone spilled!"
# puts "Your cup has #{a.fill} oz. of coffee in it."
# a.refill!
# puts "I need more of this drank!"
# puts "Your cup has #{a.fill} oz. of coffee in it."
