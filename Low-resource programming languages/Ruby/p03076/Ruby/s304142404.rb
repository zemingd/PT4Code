io = STDIN
t=[]
5.times{ t<<io.gets.to_i}
ar=t.map{|t|[t,t%10==0 ? 10 : t%10]}.sort_by{|i,j|-j}

puts ar[0..-2].inject(0){|s,(i,j)|s+(i/10.0).ceil*10} + ar[-1][0]
