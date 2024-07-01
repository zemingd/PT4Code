gets
arr = gets.chomp.split(" ").map(&:to_i)
a = arr.size
b = arr.uniq.size
puts a == b ? "YES" : "NO"