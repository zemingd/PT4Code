n=gets.to_i
x=[];y=[];z=[]
n.times{|i|x[i],y[i],z[i]=gets.split.map &:to_i}
ans1=0
ans2=0
for i in 0..100
  for j in 0..100
    ans=1
    n.times{|g|
      h=z[0]+(i-x[0]).abs+(j-y[0]).abs
      if h !=[z[g]+(i-x[g]).abs+(j-y[g]).abs,0].max
        ans=0
      end
    }
    if ans==1
      ans1=i
      ans2=j
      break
    end
  end
end
hai=z[0]+(ans1-x[0]).abs+(ans2-y[0]).abs
printf("%d %d %d",ans1,ans2,hai)
