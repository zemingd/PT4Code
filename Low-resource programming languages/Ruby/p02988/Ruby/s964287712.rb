N = gets.to_i
P = gets.split.map(&:to_i)

puts P.each_cons(3).count { |l| 
  (l[0] < l[1] && l[1] < l[2]) ||
  (l[0] > l[1] && l[1] > l[2])
}
