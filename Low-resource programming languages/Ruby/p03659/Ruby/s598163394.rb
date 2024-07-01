n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
if n == 2
  puts (arr[0] - arr[1]).abs
  exit 0
end
kuma = arr.inject(&:+)
sunuke = 0
min = 10**9

arr[0..-2].each do |i|
	sunuke += i
	kuma -= i
	diff = (kuma-sunuke).abs

	if diff==0
		puts 0
		exit 0
	end
	min = diff if min>diff
end
puts min