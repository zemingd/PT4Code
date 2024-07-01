n = gets.to_i
w = gets.split.map(&:to_i)
ans = (n-1).times.map {|i| w[0..i].inject(:+) - w[i+1..n].inject(:+)}.map{|n| n.abs}
p ans.min