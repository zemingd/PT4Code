N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
lcm = A.inject(1){|s,a|s.lcm(a)}.to_f
exit (p 0) unless lcm*0.5<=M
l, h = 0, 10**18
until h-l==1
  m = (l+h)/2
  if lcm*(m+0.5)<=M
    l = m
  else
    h = m
  end
end
p l+1