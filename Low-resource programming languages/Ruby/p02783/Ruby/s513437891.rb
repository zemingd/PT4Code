def function(h, a)
	(h % a).zero? ? h / a : h / a + 1
end

h, a = gets.chomp.split.map(&:to_i)
puts function(h, a)
