n = gets.to_i
ps = gets.split.map &:to_i

diff_count = 0

(0...n).each{ |i|
	if ps[i] != i + 1 then
		diff_count +=1
	end
}

if diff_count == 0 || diff_count == 2 then
	puts "YES"
else
	puts "NO"
end
