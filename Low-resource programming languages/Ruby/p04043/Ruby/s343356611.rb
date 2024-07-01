a = gets.split.map(&:to_i)
puts a.count(5) == 2 and a.count(7) == 1 ? "Yes" : "No"
