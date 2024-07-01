input = gets.chomp
a = input.split(" ")[0].to_i
b = input.split(" ")[1].to_i
c = input.split(" ")[2].to_i

arr = input.split(" ")

result = arr.sort

puts "#{result[0]} #{result[1]} #{result[2]}"
