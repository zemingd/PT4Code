array = gets.chomp.split(" ").map(&:to_i).sort!

array.first + array[1] == array.last ? answer = "Yes" : answer = "No"

puts answer

