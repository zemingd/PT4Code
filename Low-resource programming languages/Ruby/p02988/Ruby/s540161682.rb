n = gets.to_i
x = gets.split.map(&:to_i)
p (1...n-1).each.count{|i| [x[i-1],x[i],x[i+1]].sort[1] == x[i]}