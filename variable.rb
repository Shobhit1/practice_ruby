cars = 100

space_in_a_car = 4.0

drivers = 30

passengers = 90

# because car without driver won't be driven
cars_not_driven = cars - drivers

# as we are assuming that each car is driven by single driver
cars_driven = drivers

# Total passengers or carpool capacity is same thing
carpool_capacity = cars_driven * space_in_a_car

# how many passengers in each car
average_passengers_in_a_car = passengers / cars_driven

# Print statements for previous variables
puts "There are #{cars} cars available"

puts "There are only #{drivers} drivers available"

puts "There will be #{cars_not_driven} empty cars today"

puts "We can transport #{carpool_capacity} people today"

puts "We have #{passengers} to carpool today"

puts "We need to put about #{average_passengers_in_a_car} in each car"



puts "-------- Variables 2.0 --------"
name = 'Shobhit'

age = 28

height = 74

weight = 160

eyes = 'black'

teeth = 'White'

hair = 'Brown'

puts "Lets talk about #{name}"

puts "He's #{height} inches tall"

puts "He's #{weight} pounds heavy"

puts "Actually that's not too heavy"

puts "He's got #{eyes} eyes amd #{hair} hair"

puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"

puts "-------- Variables exercise drill --------"

def convert_to_cm(height)
   height * 2.54
end

def convert_to_kg(weight)
  weight * 0.453592
end

puts "My stats in metric system"
puts "I am #{convert_to_cm(height)} cm tall"

puts "I am #{convert_to_kg(weight)} kg heavy"
