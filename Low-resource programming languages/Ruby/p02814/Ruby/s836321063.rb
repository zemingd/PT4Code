n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.map!{|ai|ai/2}
lcm = a[0]
[*1..n-1].each{|i|
  lcm = lcm.lcm(a[i])
}
p (m/lcm+1)/2
