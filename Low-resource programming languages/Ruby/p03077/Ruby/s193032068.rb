n,d=gets.to_i,[];5.times{|a|d<< gets.to_i}
stat=[n,0,0,0,0,0]
ans=0
while stat[5]!=n
  [4,3,2,1,0].each{|a|
   if stat[a]!=0&&stat[a]<=d[a]
  	stat[a+1]+=stat[a]
    stat[a]=0
   elsif stat[a]>d[a]
    stat[a+1]+=d[a]
   	stat[a]-=d[a]
   end
  }
 ans+=1
end
p ans