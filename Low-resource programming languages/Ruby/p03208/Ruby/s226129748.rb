N,K=gets.split.map(&:to_i)
p N.times.map{gets.to_i}.sort.each_cons(K).map{|a|a[-1]-a[0]}.min