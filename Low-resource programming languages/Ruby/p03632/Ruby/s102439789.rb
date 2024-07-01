a,b,c,d=gets.chomp.split(" ").map(&:to_i)
if [b,d].min-[a,c].max > 0 then
	puts [b,d].min-[a,c].max
else
	puts 0
end