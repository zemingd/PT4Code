
a, b = gets.split(" ").map(&:to_i)
 
puts a.upto(b).select{|n| n.to_s == n.to_s.reverse }.count