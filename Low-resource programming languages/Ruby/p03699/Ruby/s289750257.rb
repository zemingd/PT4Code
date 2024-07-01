N=gets.to_i
s = N.times.map{gets.to_i}
ans = s.inject(&:+)
s.sort!
a,b=s.partition{|x| x % 10 != 0}
if ans % 10 != 0
  p ans
else
  if a.size > 0
    p ans - a[0]
  else
    p 0
  end
end
