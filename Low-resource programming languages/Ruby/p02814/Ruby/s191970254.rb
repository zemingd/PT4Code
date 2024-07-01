N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
m=2*M
lcm = A.inject(1){|s,a|s.lcm(a)}
p (m/lcm+1)/2