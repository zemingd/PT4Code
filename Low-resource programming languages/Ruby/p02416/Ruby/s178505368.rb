while (line = gets.chomp.split(//).map(&:to_i)) != [0] do
	puts line.inject {|sum, n| sum+n}
end