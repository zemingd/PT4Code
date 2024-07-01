n = gets.chomp.to_i
arr = Array.new(5)
5.times do |i|
	arr[i] = gets.chomp.to_i
end

puts (n.to_f / arr.min).ceil + 4
