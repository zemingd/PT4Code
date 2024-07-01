n,m=gets.split.map &:to_i
s=[]
m.times do |i|
  s[i]=gets.split.map &:to_i
end
a=gets.split.map &:to_i
ans=0
ans1=0
(0..1).to_a.repeated_combination(n).each do |i|
  for j in 0...m
    sum=0
    s[j][0].times do |z|
      sum+=i[s[j][z+1]-1]
    end
    ans+=1 if sum==a[j]
  end
  ans1+=1 if ans==3
end
puts ans1
