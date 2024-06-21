class GoodDog
  attr_accessor :name, :height, :weight #gives access to getter and setter

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says woof!" # uses getter method
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

ellie = GoodDog.new('Ellie', '14 inches', '20 lbs')
puts ellie.speak
puts ellie.info

fido = GoodDog.new("Fido", '12 inches', '10 lbs')
puts fido.speak
fido.change_info('Spartacus', '24 inches', '45 lbs')
puts fido.info

# Composition

class Engine
  def start
    puts "Engine starting..."
  end
end

class Car
  def initialize
    @engine = Engine.new # Engine instance is created when Car is created
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start # Engine is an intergral part of Car

# Aggregation

class Passenger
end

class Plane
  def initialize(passengers)
    @passengers = passengers # Passengers are given to the Car at creation
  end
end

#Passengers can exist without Car
passengers = [Passenger.new, Passenger.new]
my_plane = Plane.new(passengers)


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
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
lumina.current_speed

lumina.color = 'black'
puts lumina.color
puts lumina.year
lumina.spray_paint('red')