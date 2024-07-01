b,c = gets.chomp.split.map(&:to_i)
if c==100
	puts 101*(100**b)
else
	puts c*(100**b)
end