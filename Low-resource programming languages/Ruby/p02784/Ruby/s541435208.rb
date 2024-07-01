def function(h, n, a)
	sum = 0
	a.each { |c| sum += c }
	h <= sum ? 'Yes' : 'No'
end

h, n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
puts function(h, n, a)
