a,b,c=gets.split(" ").map(&:to_i)
m1 = [a,b,c].max
m3 = [a,b,c].min
m2 = a + b + c - m1 - m3
count=0
while m2<m1
  m2+=1
  m3+=1
  count+=1
end
if (m2-m3) % 2 == 1
  m1+=1
  m2+=1
  count+=1
end
t = (m2-m3)/2
t.times do
  m3+=2
  count+=1
end
puts count
