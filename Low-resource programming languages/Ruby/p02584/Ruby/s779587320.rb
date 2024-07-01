x, k, d = gets.to_s.split.map { |e| e.to_i.abs }

s = [k, x / d].min
k -= s
x -= d * s

puts (k.even? ? x : d - x)