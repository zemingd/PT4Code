n=gets.to_i
x=[];y=[];z=[]
kai=0
n.times{|i|x[i],y[i],z[i]=gets.split.map &:to_i;kai=i if z[i]>0}
ans1=0
ans2=0
for i in 0..100
  for j in 0..100
    ans=1
    h=0
    ans3=0
    h=z[kai]+(i-x[kai]).abs+(j-y[kai]).abs
    n.times{|g|
      next if z[g]==0
      ans3+=1
      if h != z[g]+(i-x[g]).abs+(j-y[g]).abs
        ans=0
      end
    }
    if ans==1
      if ans3<=1
        ans1=x[kai]
        ans2=y[kai]
        hai=z[kai]
        break
      else
      ans1=i
      ans2=j
      hai=h
      break
    end
  end
  end
end
printf("%d %d %d",ans1,ans2,hai)
