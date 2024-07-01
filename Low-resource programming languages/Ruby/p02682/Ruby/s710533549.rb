x,y,z,a=gets.split.map!(&:to_i)
ans=0
if a<x
  ans=x-a
elsif a-x<y
  ans=x
elsif a-x-y<z
  ans=x-(a-x-y)
else
  ans=x-z
end
puts ans
