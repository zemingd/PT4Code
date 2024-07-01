x,y=gets.split.map!(&:to_i)
ans=0
ryou=1
while x>ryou
  ryou*y
  ans+=1
end
puts ans
