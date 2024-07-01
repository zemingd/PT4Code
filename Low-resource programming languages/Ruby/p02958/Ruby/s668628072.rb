a = gets
ar = gets.chomp.split(" ").map(&:to_i)

p ar
puts (ar.map.with_index{ |val, key| ((val-1 == key) ? 0 : 1)}.inject(:+)) > 3 ? "NO" : "YES"
