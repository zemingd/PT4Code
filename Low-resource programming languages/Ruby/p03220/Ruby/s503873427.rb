_n = gets.strip.to_i
t, a = gets.strip.split.map(&:to_i)
res = gets.strip.split.map { |x| (a - (t - (x.to_i * 0.006))).abs }
puts res.find_index(res.min) + 1
