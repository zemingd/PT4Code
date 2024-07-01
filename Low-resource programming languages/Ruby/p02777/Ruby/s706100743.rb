cols = gets.chomp.split
counts = gets.split.map &:to_i
col = gets.chomp

if col == cols[0] then
	counts[0] -= 1
else
	counts[1] -= 1
end

puts counts.join(" ")
