n = gets.to_i
s = gets.split.map &:to_i
puts (0...n-1).each.count{|i| s[i] != i+1} > 2 ? "NO" : "YES"