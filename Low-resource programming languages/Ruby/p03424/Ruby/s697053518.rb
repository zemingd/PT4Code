a = gets.to_i
b = gets.split.uniq
puts b.size == 3 ? "Three" : "Four"