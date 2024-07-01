a,b,c,d=gets.split.map &:to_i
e = [b,d].min - [a,c].max
if e>0
  p e
else
  p 0
end