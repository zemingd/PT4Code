n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i).sort!

half = array.size/2
puts array[half] - array[(half-1)]
