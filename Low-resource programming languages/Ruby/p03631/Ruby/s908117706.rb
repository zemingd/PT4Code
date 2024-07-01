n = gets.chomp
puts (n.size / 2).times.map {|i|
n[i] == n[n.size.pred - i]
}.all? ? :Yes : :No


