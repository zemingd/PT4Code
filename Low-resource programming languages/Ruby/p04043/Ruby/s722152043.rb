a = gets.split.map(&:to_i)

puts a.count(5) == 2 && a.count(7) == 1 ? "YES" : "NO"