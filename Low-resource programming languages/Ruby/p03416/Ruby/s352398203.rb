A, B = gets.split.map &:to_i
p (A..B).count{|n| n.to_s == n.to_s.reverse}