n=gets.to_i
a=n.times.map{|i|s,k=gets.split;[s,k.to_i,i+1]}
a.sort_by{|s,k,i| [s,-k]}.map{|s,k,i| puts i}