a, b, c = gets.split.map &:to_i 
p (a..b).reduce(0){|s, e| s + (c % e == 0 ? 1 : 0)}