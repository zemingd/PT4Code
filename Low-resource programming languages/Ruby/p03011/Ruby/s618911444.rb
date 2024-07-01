p, r, q = gets.split.map(&:to_i)
times = [p, r, q]
times = times.sort
puts times[0] + times[1]