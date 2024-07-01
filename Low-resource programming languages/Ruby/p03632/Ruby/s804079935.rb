a, b, c, d = gets.chomp.split(" ").map(&:to_i)
start = [a, c].max
stop = [b, d].min
res = stop - start
res = 0 if res < 0
puts res
