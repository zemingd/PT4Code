N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
lcm = A.inject(1){|s,a|s.lcm(a)}/2
p (M+lcm)/lcm/2