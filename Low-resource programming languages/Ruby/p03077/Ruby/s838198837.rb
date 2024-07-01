n = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i

aa = n
bb = 0
cc = 0
dd = 0
ee = 0

ans = 0
while aa != 0 || bb != 0 || cc != 0 || dd != 0 || ee != 0
  ans += 1

  if ee >= e
    ee -= e
  elsif ee > 0
    ee = 0
  end

  if dd >= d
    dd -= d
    ee += d
  elsif dd > 0
    ee += dd
    dd = 0
  end

  if cc >= c
    cc -= c
    dd += c
  elsif cc > 0
    dd += cc
    cc = 0
  end

  if bb >= b
    bb -= b
    cc += b
  elsif bb > 0
    cc += bb
    bb = 0
  end

  if aa >= a
    aa -= a
    bb += a
  elsif aa > 0
    bb += aa
    aa = 0
  end
end
p ans
