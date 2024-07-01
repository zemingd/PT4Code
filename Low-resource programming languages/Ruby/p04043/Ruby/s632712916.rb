x = gets.split.map(&:to_i).sort!
puts x == [5,5,7] ? "YES" : "NO"