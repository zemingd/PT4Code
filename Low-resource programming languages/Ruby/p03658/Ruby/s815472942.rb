n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
s = 0
k.times do
	m = arr.max
	s += m
	arr.each_with_index do |n, i|
		arr.delete_at(i) and break if n == arr.max
	end
end
puts s