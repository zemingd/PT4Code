d,t,s = gets.split.map &:to_i

if t * s >= d then
	puts 'Yes'
else
	puts 'No'
end