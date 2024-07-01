a,b=gets.split.map &:to_i
g=b-a
if a==b
  p 0
elsif b-a==1
  p 1
elsif a.abs==b.abs
  p 1
elsif a>=0 && b>=0
  if b>=a
    p b-a
  else
    p a-b+2
  end
elsif a>=0
  p (a.abs-b.abs).abs+1
elsif b>=0
  p (a.abs-b.abs).abs+1
else
  if b>=a
    p (a.abs-b.abs).abs
  else
    p (a.abs-b.abs).abs+2
  end
end