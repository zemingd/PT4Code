c=[0,2,5,5,4,5,6,3,7,6];N=gets.split[0].to_i;A=gets.split.map &:to_i;d=[0]+A.map{};0.upto(N){|i|d[i]&&A.each{|x|d[t=i+c[x]]=[d[t]?d[t]:0,d[i]*10+x].max}};p d[N]