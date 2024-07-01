n = gets.to_i
h = gets.split.map(&:to_i)
p n.times.count{|i| h[0..i].max == h[i]}