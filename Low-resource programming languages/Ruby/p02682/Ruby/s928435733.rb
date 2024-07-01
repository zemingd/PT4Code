a,b,c,k=`dd`.split.map &:to_i
if k<=a
  p k
elsif a<k && k<=a+b
  p a
else
  p a-(k-(a+b))
end