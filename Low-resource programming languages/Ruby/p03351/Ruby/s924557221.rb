a,b,c,d = gets.chomp.split.map(&:to_i)
if [(a-b).abs,(a-c).abs,(b-c).abs].min<=d
	puts "Yes"
else
	puts "No"
end