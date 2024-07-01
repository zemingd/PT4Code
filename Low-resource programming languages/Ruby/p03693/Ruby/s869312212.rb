rgb = STDIN.gets.chomp.split(/\s/).map{|c| c.to_i}
value = rgb[0] * 100 + rgb[1] * 10 + rgb[2]
ans = value % 4 === 0 ? 'YES' : 'NO'
puts ans
