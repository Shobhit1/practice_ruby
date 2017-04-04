print "tell me your name?"
user_name = gets.chomp

while user_name.empty?
  print "tell me your name?"
  user_name = gets.chomp
end

puts "User name #{user_name}"

