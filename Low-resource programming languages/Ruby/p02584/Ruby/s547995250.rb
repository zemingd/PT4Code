x, k, d = gets.split.map(&:to_i)
x = x.abs
move_times = [x / d, k].min
rest = k - move_times
move_times += 1 if rest.odd?
puts (x - (d * move_times)).abs
