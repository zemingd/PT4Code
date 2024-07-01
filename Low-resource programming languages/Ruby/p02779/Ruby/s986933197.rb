n = gets.to_i
a = gets.split.map &:to_i
a.uniq!
puts a.size == n ? "YES" : "NO"