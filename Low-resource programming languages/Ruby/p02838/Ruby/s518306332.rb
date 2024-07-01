N,*A = `dd`.split.map &:to_i
Mod = 10**9 + 7
s = 0
t = 1
60.times {
  n0 = 0
  m = 0
  ss = 0
  A.reverse_each{ |a|
    z = (a & t) == 0
    ss += z ? m - n0 : n0
    n0 += 1 if z
    m += 1
  }
  s = (s + ss * t) % Mod
  t <<= 1
}
p s
