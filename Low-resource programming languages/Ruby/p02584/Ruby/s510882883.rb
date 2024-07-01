x,k,d=gets.split.map &:to_i
r=x.abs/d
if r>=k
  p (x.abs-k*d).abs
else
  if (k-r).even?
    p (x.abs%d).abs
  else
    p [((x.abs%d)-d).abs,((x.abs%d)+d).abs].min
  end
end