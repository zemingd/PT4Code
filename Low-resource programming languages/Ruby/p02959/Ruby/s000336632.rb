n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
brr = gets.chomp.split.map(&:to_i)

mons = arr.inject(:+)

a = arr[0]
arr[0] = arr[0] - [arr[0], brr[0]].min
brr[0] = brr[0] - [a, brr[0]].min

(1..n-1).each do |i|
	arr[i] = [arr[i] - brr[i-1], 0].max 
	a = arr[i]
	arr[i] = arr[i] - [arr[i], brr[i]].min
	brr[i] = brr[i] - [a, brr[i]].min
end
a = arr[n]
arr[n] = [arr[n] - brr[n-1], 0].max

puts mons - arr.inject(:+)
