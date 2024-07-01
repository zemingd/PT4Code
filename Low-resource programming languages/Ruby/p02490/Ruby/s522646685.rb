loop do
	a, b = gets.split.map(&:to_i).sort!
	break if a==0 && b==0
	puts "#{a} #{b}"
end