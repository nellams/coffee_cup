### Part I - Model Your Cup

# Create a constructor that instantiates your coffee cup with an amount of coffee
# and a maximum capacity. Most cups support 12 oz and are filled up to 8 oz, so
# use those as default values.

### Part II - Take a Sip and Handle Spills

# Implement a `sip!` method that decreases the amount of coffee in your cup. It
# should permanently affect the state of your coffee cup instance.
#
# Output the error "Hey! You need a refill!" if there is no more coffee left to
# sip.
#
# Who brought the klutz? One of your friends knocked over your coffee cup!
# Implement a `spill!` method that eliminates all of the coffee in your cup.
### Part III - Get a Refill

# Implement a `refill!` method that refills your cup. The amount of coffee
# refilled should always be 2 oz less than the maximum capacity of the cup.

### Part IV - Try Out Different Cup Sizes and Amounts!

#The diner also has a policy that the maximum capacity of their cups must be
# greater than 2. (No espresso shots here!) Please keep this in mind as you
# create other instances of the `CoffeeCup` class and call your instance methods on them.

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
