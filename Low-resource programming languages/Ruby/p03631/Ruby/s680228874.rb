array = gets.chomp.split("").map(&:to_i)

array.first == array.last ? answer = "Yes" : answer = "No"

puts answer