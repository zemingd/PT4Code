n = gets.to_i
puts ((1..n).inject(:+) - n)