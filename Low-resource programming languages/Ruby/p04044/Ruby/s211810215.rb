n,l = gets.split(" ").map(&:to_i)
s = n.times.map{gets.chomp}.sort
 
puts s.join