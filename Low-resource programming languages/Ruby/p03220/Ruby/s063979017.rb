n = gets.to_i
t, a = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map{|i| (a - (t - i.to_i * 0.006)).abs}

p h.index(h.min) + 1