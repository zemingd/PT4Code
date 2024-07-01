line = gets
input = line.chomp.split(',').map {|e| e.chomp.to_i}
sorted = input.sort
ans = sorted[1] - sorted[0] + sorted[2] - sorted[1]
puts ans