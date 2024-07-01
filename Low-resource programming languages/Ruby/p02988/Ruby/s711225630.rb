n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
cnt = 0
1.upto(n-2) do |i|
	ar = arr.slice(i-1,3)
	cnt += 1 if ar.max > arr[i] && ar.min < arr[i]
end
puts cnt



