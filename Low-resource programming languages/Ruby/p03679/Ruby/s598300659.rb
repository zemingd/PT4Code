x, a, b = gets.chomp.split.map(&:to_i)
puts a>b ? "delicious" : a==b ? "safe" : "dangerous"
