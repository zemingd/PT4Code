a, b = gets.chomp.split.map(&:to_i)
if a.even? != b.even?
	puts "IMPOSSIBLE"
	exit
end

puts (a + b) / 2
