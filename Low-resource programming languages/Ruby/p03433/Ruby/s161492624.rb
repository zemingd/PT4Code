price = gets.strip.to_i
one = gets.strip.to_i

puts price % 500 <= one ? 'yes' : 'no'