n = gets.to_i
puts (1..(n-1)).map{|i| i}.inject(:+)