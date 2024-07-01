n,k=gets.split.map &:to_i
h=Hash.new 0
h=(gets.split.each{|e|h[e.to_i]+=1}).sort_by{|k,v|v} 
p (0...h.size -k).inject(0){|a,i|a+=h[i]}