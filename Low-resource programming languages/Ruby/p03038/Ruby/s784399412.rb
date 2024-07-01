N, M = gets.chomp.split(" ").map(&:to_i);
A = gets.chomp.split(" ").map(&:to_i);
P = []
M.times{|i|
  P << gets.chomp.split(" ").map(&:to_i);
}

P.each{|i|
  A.sort!
  b, c = i
  s = A.select{|a| a < c}.size
  (0...[b, s].min).each{|j| A[j] = c}
}

puts A.inject(:+)
