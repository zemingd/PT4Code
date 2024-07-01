n,m=gets.split.map(&:to_i)
res,front=0,1
m.times.map{gets.split.map(&:to_i)}.sort_by(&:last).each{|a,b|res,front=res+1,b if a>=front}
p res