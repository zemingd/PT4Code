n,m=gets.split.map &:to_i
p=[];y=[]
m.times{|i|p[i],y[i]=gets.split.map &:to_i}
ans=p.zip(y,(0..m).to_a).sort_by{|x|[x[0],x[1]]}
z=1
for i in 0...m
  (ans[i][3]=z;next) if i==0
  if ans[i-1][0]==ans[i][0]
    z+=1
    ans[i][3]=z
  else
    z=1
    ans[i][3]=z
  end
end
ans=ans.sort_by{|x|x[2]}
m.times{|y|printf("%06d%06d\n",ans[y][0],ans[y][3])}
