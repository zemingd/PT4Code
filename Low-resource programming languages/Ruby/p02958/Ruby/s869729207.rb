n = gets.to_i
s = gets.split.map &:to_i
puts (0...n-1).each.count{|i| s[i] != s[i+1]-1} >= 2 && s[0] != 1 ? "NO" : "YES"
