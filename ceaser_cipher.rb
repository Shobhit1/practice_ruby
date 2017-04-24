# Input caesar_cipher("What a string!", 5)
# Ouput "Bmfy f xywnsl!"

class Cipher
  @@caps_alphabet = (65..90)
  @@lower_alphabet = (97..122)

  def get_ascii(char)
    char.ord
  end

  def transform(char, offset)
    asc = get_ascii(char)
    converted = asc + offset
    
    if converted > @@lower_alphabet.last
      return (converted - 122) + 96
    elsif converted > @@caps_alphabet.last && converted < @@lower_alphabet.first
      return (converted - 90) + 64
    elsif (@@caps_alphabet.include? converted) || (@@lower_alphabet.include? converted)
      return converted
    else
      return asc
    end
  end

  def ceaser_cipher(string, offset)
    string_chars = string.chars
    transformed = string_chars.map do |char|
      transform(char, offset).chr
    end
    transformed.join
  end

end

puts "enter string"
s = gets.chomp

puts "offset"
o = gets.chomp.to_i

cipher = Cipher.new
puts cipher.ceaser_cipher(s,o)