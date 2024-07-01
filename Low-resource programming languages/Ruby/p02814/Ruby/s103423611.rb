N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
raise  if A.any?{|a|a.odd?}
exit (p 0) if A.any?{|a|a.odd?}
lcm = A.inject(1){|s,a|s.lcm(a)}/2
p (M/lcm+1)/2