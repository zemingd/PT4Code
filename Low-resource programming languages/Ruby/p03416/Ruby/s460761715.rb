a, b = gets.split.map &:to_i
p (a..b).to_a.count{|i| i.to_s == i.to_s.reverse}