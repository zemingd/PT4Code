n,d=gets.split.map &:to_i
s=[]
kai=[]
n.times{|i|
  s[i]=gets.split.map &:to_i
}
ans=0
[*0...n].combination(2).each{|x,y|
  sum=0
  for j in 0..d-1
    sum+=(s[x][j]-s[y][j])**2
  end
  if Math.sqrt(sum)%1==0
    ans+=1
  end
}
puts ans
