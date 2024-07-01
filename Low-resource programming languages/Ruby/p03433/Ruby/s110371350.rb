price = gets.chomp.to_i
one = gets.to_i

puts price % 500 >= one  ? 'yes' : 'no'