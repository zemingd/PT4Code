n, k= gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
l = a.sort
total = 0
k.times do |i|
	total = total + l[n - i - 1]
end
puts total