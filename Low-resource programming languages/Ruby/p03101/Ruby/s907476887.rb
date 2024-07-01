lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

puts (lines[0][0] - lines[1][0]) * (lines[0][1] - lines[1][1])