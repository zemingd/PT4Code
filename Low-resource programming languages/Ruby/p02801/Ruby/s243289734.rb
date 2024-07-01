c = gets.chomp.to_s

arr = ('a'..'z').to_a
puts arr[arr.find_index(c) + 1]

