n=gets.to_i
as=[]
balls=[0]*(n+1)
gets.split.each do |m|
  m=m.to_i
  as.push(m)
  balls[m]+=1
end
all=balls.inject(0){|sum,bn| sum+(bn*(bn-1))/2}
as.each do |an|
  puts all-balls[an]+1
end
