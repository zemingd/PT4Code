a, b, c = gets.split.map &:to_i

remain =  c - (a - b) 

if remain > 0 then
	puts remain
else
	puts 0
end
