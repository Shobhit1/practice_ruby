# Greeter class

class Greeter
  attr_accessor :name
  def initialize(name = "world")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end


# create a Greeter object
# how to do it?

greeter = Greeter.new("Shobhit")


greeter.say_bye
greeter.say_hi

# to only check the methods from our class we can do two things
# 1 do a \-\ from Object.methods
# 2 simply pass false to the first call

# puts Greeter.instance_methods - Object.methods
# 
# puts Greeter.instance_methods(false)


# Get the methods for which the function actually responds to

puts greeter.respond_to?("name")

puts greeter.respond_to?("name=")