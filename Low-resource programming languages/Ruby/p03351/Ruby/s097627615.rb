a,b,c,d = gets.chomp.split.map(&:to_i)
if [(a-b).abs,(b-c).abs].max<=d || (a-c).abs<=d
	puts "Yes"
else
	puts "No"
end