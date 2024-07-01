n,k=gets.split.map &:to_i
p gets.split.map(&:to_i).sort{|a,b|b<=>a}[0..k-1].inject(:+)
