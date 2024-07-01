p,q,r = gets.chomp.split.map(&:to_i)
ans = p + q + r - [p,q,r].max
puts ans 