arr = gets.split.map(&:to_i) 
k = gets.chomp.to_i

k.times{
	arr.sort!
	arr[2] = arr[2]*2
}

puts arr[0]+arr[1]+arr[2]