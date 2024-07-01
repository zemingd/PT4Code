n=gets.to_i
s=gets.split.map &:to_i
c=0
n.times do|i|
  while s[i]%2==0
    s[i]/=2
    c+=1
  end
end
p c
