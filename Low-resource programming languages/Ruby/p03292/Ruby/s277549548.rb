array = gets.chomp.split(" ").map(&:to_i).sort!

puts array.last - array.first