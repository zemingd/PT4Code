n,a,b = gets.split.map(&:to_i)
d = b-a

def calc(n,a,b)
  return [b-1, a+((b-a)-a+1)/2].min
end

if d%2==0
  p d/2
else
  p [calc(n,a,b), calc(n,n-b+1,n-a+1)].min
end
