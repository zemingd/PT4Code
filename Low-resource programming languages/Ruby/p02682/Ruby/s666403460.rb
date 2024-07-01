a,b,c,k = gets.split.map &:to_i

if a >= k then
	puts k
elsif a + b >= k then
	puts a
else
	puts a - (k - a - b)
end