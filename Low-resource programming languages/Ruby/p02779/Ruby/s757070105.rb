gets
s=gets.split.map(&:to_i)
puts (s.size == s.uniq.size) ? "YES" : "NO"