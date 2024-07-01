N = gets.to_i
a =  N.times.map{gets.to_i}
h = Hash.new(0)
a.each{|t|h[t]+=1}
p h.select{|k,v|v%2==1}.size