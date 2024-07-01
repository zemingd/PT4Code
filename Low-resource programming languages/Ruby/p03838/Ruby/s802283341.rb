a,b=gets.split.map &:to_i
g=b-a

if b-a==1
  p 1
elsif a.abs==b.abs
  p 1
elsif a>=0 && b>=0
  if b>=a
    p b-a
  else
    if b==0
      p a+1
    else
      p a-b+2
    end
  end
elsif a>=0
  p (a.abs-b.abs).abs+1
elsif b>=0
  if b==0
    p (a.abs-b.abs).abs
  else
    p (a.abs-b.abs).abs+1
  end
else
  if b>=a
    p (a.abs-b.abs).abs
  else
    p (a.abs-b.abs).abs+2
  end
end