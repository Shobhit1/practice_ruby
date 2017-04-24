dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("below", dictionary)

def substrings(string, dictionary)
  hash = Hash.new(0)
  dictionary.each do |word|
    if string.downcase.match(/(#{word.downcase})/)
      keys = string.downcase.scan(/(#{word.downcase})/)
      keys.map do |key|
        hash[key.first] += 1
      end
    end
  end
  hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
puts substrings("below", dictionary)