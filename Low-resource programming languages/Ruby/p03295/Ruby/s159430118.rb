n,m=gets.split.map(&:to_i)
res,front=0,1
m.times.map{gets.split.map(&:to_i).reverse}.sort.each{|b,a|res,front=res+1,b if a>=front}
p res