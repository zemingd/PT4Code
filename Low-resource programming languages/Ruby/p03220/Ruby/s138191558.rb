gets
t,a=gets.split(" ").map{|e| e.to_f}
xs=gets.split(" ").map{|e| e.to_f}.map{|e| (a-(t-e*0.006)).abs}
puts xs.index(xs.min)+1