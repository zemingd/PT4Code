X = gets.to_i 
a = (X % 11) >= 6 ? 2 : 1 
puts (X / 11) * 2 + a