x = gets.to_i
puts (1..x).map{|i|i*i}.select{|i|i<=x}.last