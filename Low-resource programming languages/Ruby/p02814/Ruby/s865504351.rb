N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
lcm = A.inject(1){|s,a|
  exit (p 0) if a.odd?
  s.lcm(a)
}
p (((2*M)/lcm)+1)/2