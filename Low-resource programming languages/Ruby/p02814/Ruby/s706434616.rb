N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
lcm = A.inject(1){|s,a|s.lcm(a/2)}
l, h = 0, 10**18
until h-l==1
  m = (l+h)/2
  if lcm*m<=M
    l = m
  else
    h = m
  end
end
l -= 1 if l.even?
p l/2 + (l.odd? ? 1 : 0)