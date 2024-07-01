k = gets.to_i
a,b = gets.split.map(&:to_i)

puts ((b+1) - a) >= k ? "OK" : "NG"