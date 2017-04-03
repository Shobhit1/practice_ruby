class Person
  def initialize(name)
    @name = name
  end

  def do_with_name
    yield(@name)
  end  
end

person = Person.new('Shobhit')

person.do_with_name do |name|
  puts "Hey, the name is #{name}"
end