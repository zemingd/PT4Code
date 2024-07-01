x,y=gets.split.map!{|i|i.to_i}
ans=0
kai=0
while x>kai
  kai+=y
  ans+=1
end
puts ans
