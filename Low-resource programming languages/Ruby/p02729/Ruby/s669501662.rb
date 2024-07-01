x,y=gets.split.map!(&:to_i)
ans1=0
ans2=0
if x>2
  for i in 1..x-1
    ans1+=i
  end
else
  ans1=x-1
end
if y>2
  for j in 1..y-1
    ans2+=j
  end
else
  ans2=y-1
end
puts ans1+ans2
