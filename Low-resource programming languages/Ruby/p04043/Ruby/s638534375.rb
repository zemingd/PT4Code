arr = gets.chomp.split.map(&:to_i)

puts arr.count(5) == 2 && arr.count(7) == 1 ? "YES" : "NO"