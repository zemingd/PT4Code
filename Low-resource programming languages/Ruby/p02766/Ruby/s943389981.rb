x,y=gets.split.map!(&:to_i)
ans=1
ryou=y
while x>y
  y*=ryou
  ans+=1
end
puts ans
