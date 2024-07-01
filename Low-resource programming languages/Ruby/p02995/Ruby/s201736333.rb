def main
  a, b, c, d = gets.split.map(&:to_i)

  total = b - a + 1

  ac = a - a % c
  bc = b - b % c
  n = bc - ac
  ccnt = n / c
  ccnt += 1 if a % c == 0

  ad = a - a % d
  bd = b - b % d
  m = bd - ad
  dcnt = m / d
  dcnt += 1 if a % d == 0

  lcm = c.lcm(d)
  al = a - a % lcm
  bl = b - b % lcm
  o = bl - al
  cnt = o / lcm
  cnt += 1 if a % lcm == 0

  puts total - ccnt - dcnt + cnt
end

main if $0 == __FILE__
