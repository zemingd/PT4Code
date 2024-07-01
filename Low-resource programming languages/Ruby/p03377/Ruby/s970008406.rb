n, m, x = gets.chomp.split(" ").map(&:to_i)
na = gets.chomp.split(" ").map(&:to_i)
 
cost_a = 0
cost_b = 0
 
na.each do |i|
  i > x ? cost_a += 1 : cost_b += 1
end
 
puts [cost_a, cost_b].min