n = gets.to_i
puts (1..(n-1)).map{|n| n}.inject(:+)