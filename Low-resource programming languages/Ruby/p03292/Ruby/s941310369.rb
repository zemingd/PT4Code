array = gets.chomp.split(" ").map(&:to_i);
array.sort!
cost = array[2] - array[0]
puts cost
