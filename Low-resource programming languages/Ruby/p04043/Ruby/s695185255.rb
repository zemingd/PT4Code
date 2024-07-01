lengths = gets.chomp.split.map(&:to_i)
puts (lengths.sort == [5, 5, 7]) ? "YES" : "NO"
