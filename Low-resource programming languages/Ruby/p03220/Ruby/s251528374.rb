n,t,a,*h=`dd`.split.map &:to_i;
i=0;
p h.map{|x|[((t-a)*1000-x*6).abs,i+=1]}.min[1]