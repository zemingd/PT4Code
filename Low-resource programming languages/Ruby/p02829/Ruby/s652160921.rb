a = gets.to_i
b = gets.to_i
array = [1, 2, 3]
array.delete_if { |n| [a,b].include?(n) }
puts array.first