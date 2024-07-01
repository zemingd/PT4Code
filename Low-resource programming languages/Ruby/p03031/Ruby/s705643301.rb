n,m=gets.split.map(&:to_i)
k=[]
m.times do
  k<<gets.split.map(&:to_i)
end
p=gets.split.map(&:to_i)
switch=0
ans=0
can=0
s=[0,1].repeated_permutation(n).to_a
s.each do |s|
  can=0
  m.times do |i|
    1.upto(k[i][0]) do |j|
      switch+=s[k[i][j]-1]
    end
    if switch%2==p[i]
      can+=1
    else
      break
    end
  end
  if can==m
    ans+=1
  end
end
puts ans
