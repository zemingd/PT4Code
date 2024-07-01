n = gets.to_i
hina = gets.split(" ").uniq

puts (hina.size == 3) ? "Three" : "Four"