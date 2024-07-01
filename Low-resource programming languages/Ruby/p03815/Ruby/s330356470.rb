def ok(x)
  a=(x+1)/2
  b=x/2
  X <= 5*a+6*b
end

X=gets.to_i
l=0
h=X
while l+1<h
  m = (l+h)/2
  if ok(m)
    h=m
  else
    l=m
  end
end
p h
