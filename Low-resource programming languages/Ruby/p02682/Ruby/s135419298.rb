a,b,c,k=`dd`.split.map &:to_i
if k<=a
  p k
elsif a<k<=a+b
  p a
else
  a-(k-(a+b))
end