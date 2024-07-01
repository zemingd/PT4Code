n = gets.chomp.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
list = gets.chomp.split(' ').map(&:to_i).map{|i| (t - (i * 0.006)-a).abs}

print n.times.min_by{|i| list[i] } + 1