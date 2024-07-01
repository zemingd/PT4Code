m,n=gets.split.map(&:to_i)
if (m-n).abs>1
  p 0;exit
end
def f(n)
  c=1
  n.downto(1).each{|i|c*=i}
  return c
end
def v(n)
  return n%(10**9+7)
end
if m==n
  p v((v(f(m))*v(f(n)*2)))
else
  p v(v(f(m))*v(f(n))))
end
