n,k,*a=`dd`.split.map &:to_i;45.downto(r=t=0){|i|z=1<<i;c=a.count{|x|x&z>0};t|z>k||n<=c*2?r+=c*z:[t|=z,r+=n-c<<i]};p r