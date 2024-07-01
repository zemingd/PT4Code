alphabet = gets.chomp
array = [*'a'..'z']
puts array[array.index(alphabet) + 1]