while (line = gets.split(//).map(&:to_i)) != [0, 0] do
	puts line.inject {|sum, n| sum+n}
end