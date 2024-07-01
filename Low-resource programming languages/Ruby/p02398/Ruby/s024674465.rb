a,b,c = gets.split(" ").map(&:to_i)
puts (a..b).select{|i| c%i == 0 }.length