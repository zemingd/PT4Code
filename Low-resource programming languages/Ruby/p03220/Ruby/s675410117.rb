n,t,a,*h=`dd`.split.map &:to_i
i=0
puts h.map{|x| [(a-(t-x*0.006)).abs, i+=1]}.min[1]
