N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
lcm = A.inject(1){|s,a|s.lcm(a)}
exit (p 0) if A.any?{|a|(lcm/a).even?}
p (2*M/lcm+1)/2