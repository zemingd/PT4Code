n,m=gets.split.map(&:to_i)
k=[]
m.times do
  k<<gets.split.map(&:to_i)
end
switch=0
ans=0
can=false
p=gets.split.map(&:to_i)
s=[0,1].repeated_permutation(n).to_a
s.each do |s|
  m.times do |i|
    can=false
    1.upto(k[i][0]) do |j|
      switch+=s[k[i][j]-1]
    end
    if switch%2==p[i]
      can=true
    else
      break
    end
  end
  if can
    ans+=1
  end
end
puts ans
