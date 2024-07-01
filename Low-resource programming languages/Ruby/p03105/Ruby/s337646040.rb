line = gets.chomp.split.map(&:to_i)

ans = line[1] / line[0]

ans = line[2] if ans > line[2]

puts ans
