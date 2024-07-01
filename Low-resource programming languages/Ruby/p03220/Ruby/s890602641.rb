_n = gets.to_i
t, avg = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)


h = ary.min_by { |a| ((t - a * 0.006) - avg).abs }

puts ary.index(h) + 1
