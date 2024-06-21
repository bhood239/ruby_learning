class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs

class MyCar

  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def speed_up(increase)
    @speed += increase
    puts "you push the gas and accelerate #{increase} mph."
  end

  def brake(decrease)
    @speed -= decrease
    puts "You push the brake and decelerate #{decrease} mph."
  end

  def current_speed
    puts "You are now going #{@speed} mph."
  end

  def shut_off
    @speed = 0
    puts "You are now stopped!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def to_s
    puts "year: #{year}, color: #{color}, model: #{@model}"
  end
end

MyCar.gas_mileage(13, 351)

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car
