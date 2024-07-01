a, b = STDIN.gets.split.map(&:to_i)

d, r = a.divmod(b)
f = a / b.to_f

puts "%d %d %.5f" % [d, r, f]