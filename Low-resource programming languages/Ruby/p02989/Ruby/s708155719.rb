n = gets.to_i
d = gets.chomp.split(" ").map(&:to_i)
q = d.sort
ans = q[n/2]-q[(n/2)-1]
puts ans