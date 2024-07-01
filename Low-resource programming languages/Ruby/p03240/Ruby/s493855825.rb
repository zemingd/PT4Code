n=gets.to_i
x=[];y=[];z=[]
n.times{|i|x[i],y[i],z[i]=gets.split.map &:to_i}
ans1=0
ans2=0
for i in 0..100
  for j in 0..100
    ans=1
    h=0
    n.times{|g|
      next if z[g]==0
      h=z[g]+(i-x[g]).abs+(j-y[g]).abs if h==0
      if h !=z[g]+(i-x[g]).abs+(j-y[g]).abs
        ans=0
      end
    }
    if ans==1
      ans1=i
      ans2=j
      hai=h
    end
  end
end
printf("%d %d %d",ans1,ans2,hai)
