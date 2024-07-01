input = gets.chomp
num = input.split(" ")[0].to_i
len = input.split(" ")[0].to_i

arr = []
num.times { arr << gets.chomp }

puts arr.sort.join
