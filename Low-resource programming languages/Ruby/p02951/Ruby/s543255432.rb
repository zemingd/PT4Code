while line = gets
	lines = line.chomp.split(' ').map(&:to_i)
end

r = lines[2] - (lines[0] - lines[1])
if (r < 0) then
	r = 0
end
print r
