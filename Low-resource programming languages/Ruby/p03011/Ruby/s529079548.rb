a, q, r = gets.chomp.split(" ").map(&:to_i)
ans = [a+q,q+r,a+r].min
puts ans
