N=gets.to_i
s=N.times.map{|i|gets.chomp.to_s}
t=s.uniq.map{|i| [i,s.count(i)]}.to_h
puts t.select{|k,v|v==t.values.max}.keys.sort