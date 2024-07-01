n,k=gets.split.map(&:to_i)
h=n.times.map{gets.to_i}.sort
puts h.each_cons(k).map{|x| x[-1] - x[0]}.min