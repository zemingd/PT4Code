line = gets
input = line.split(',').map {|e| e.chomp.to_i}
ans = input.max - input.min
puts ans