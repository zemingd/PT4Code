p,q,r=gets.chomp.split(" ").map(&:to_i)

puts [p+q, r+p, q+r].min
