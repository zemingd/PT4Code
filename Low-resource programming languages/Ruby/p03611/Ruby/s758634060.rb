s=[0]*100002
gets
gets.split.each{|i|s[i.to_i]+=1}
p (s.size-1).times.map{|i|s[i-1]+s[i]+s[i+1]}.max