n, k = gets.split.map(&:to_i)
d_vals = gets.split.map{|n| (n.to_f + 1.0) / 2}
sums = d_vals.inject([0]){|acc, it| acc.push(acc.last + it)}
puts sums.drop(k).zip(sums).map{|r, l| r - l}.max
