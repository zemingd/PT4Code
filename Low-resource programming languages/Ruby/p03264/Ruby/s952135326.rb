k = gets.to_i
puts (1..k).to_a.combination(2).select{|a,b| a%2 != b%2}.size