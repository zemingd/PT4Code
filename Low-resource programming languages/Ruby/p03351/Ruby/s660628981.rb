a, b, c, d = gets.split.map(&:to_i)
if (b-a).abs <= d  && (c-b).abs <= d
	puts "Yes"
elsif (a-c).abs <= d
	puts "Yes"
else
	puts "No"
end