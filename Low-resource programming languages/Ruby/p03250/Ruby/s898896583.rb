array = gets.chomp.split(" ").map(&:to_i).sort!

puts array.last * 10 + array[0] + array[1]
