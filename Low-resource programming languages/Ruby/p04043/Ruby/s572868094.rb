X = gets.split.map(&:to_i)

puts X.sort == [5, 5, 7] ? "YES" : "NO"