N=gets.to_i
s=N.times.map{|i|gets.chomp.to_s}
h=Hash.new(0)
s.each{|i|h[i]+=1}
max=h.values.max
puts h.select{|k,v|v==max}.keys.sort