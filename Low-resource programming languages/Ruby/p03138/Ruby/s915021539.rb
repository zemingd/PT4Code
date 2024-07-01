eval'N,K,*A='+`dd`.split*?,
l=f=0
42.times{|b|c=0,0;A.map{|a|c[a[b]]+=1<<b};x,y=c;l+=y+K[b]*[f-l,x-y].max;f+=c.max}
p l