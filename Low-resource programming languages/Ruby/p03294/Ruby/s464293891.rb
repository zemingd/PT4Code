N = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
a.each do |r|
	sum += r-1
end
print sum
