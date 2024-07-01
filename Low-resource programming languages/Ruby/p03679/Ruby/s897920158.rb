m,n=gets.split.map(&:to_i)
if (m-n).abs>1
  p 0;exit
end
def f(n)
  c=1
  n.downto(1).each{|i|c*=i}
  return c%(10**9+7)
end
if m==n
  p (f(m)*f(n)*2)%(10**9+7)
else
  p (f(m)*f(n))%(10**9+7)
end
