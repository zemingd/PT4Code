x,y=gets.split.map!(&:to_i)
ans1=0
ans2=0
for i in 1..x-1
  ans1+=i
end
for j in 1..y-1
  ans2+=j
end
puts ans1+ans2
