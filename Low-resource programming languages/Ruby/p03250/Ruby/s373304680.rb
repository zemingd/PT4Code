a=gets.split
a+=?+
ans=0
a.permutation(4){|b|
  if (b[0]==?+)||(b[-1]==?+)
    next
  end
  ans = [ans, eval(b*'')].max
  }
p ans