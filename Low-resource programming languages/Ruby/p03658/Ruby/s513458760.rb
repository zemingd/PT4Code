require 'scanf'
input = gets
n, k = input.scanf("%d %d")
l = gets.split(" ").map { |str| str.to_i }
l_sort = l.sort{|a, b| b <=> a}

total = 0
k.times {|i|
	total += l_sort[i]
}

puts total