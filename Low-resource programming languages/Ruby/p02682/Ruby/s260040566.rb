a,b,c,k = gets.split.map(&:to_i)

cnt = 0
if k > a
  k -= a
  cnt += a
else
  cnt += k
  p cnt
  exit
end

if k > b
  k -= b
else
  p cnt
  exit
end

if k > c
  k -= c
  cnt -= 1
else
  cnt -= k
  p cnt
  exit
end
p cnt