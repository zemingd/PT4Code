a,b,c,d = gets.split.map &:to_i

if ((c - b).abs <= d && (b - a).abs <= d) || (a - c).abs <= d then
	puts 'Yes'
else
	puts 'No'
end