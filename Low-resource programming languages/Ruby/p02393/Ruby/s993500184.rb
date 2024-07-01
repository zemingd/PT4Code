# multi_input pattern
ins = gets.chomp!.split(" ")
ins.map!(&:to_i)
ins.sort!

ins.each do |i|
	print i
	print " "
end

print "\n"