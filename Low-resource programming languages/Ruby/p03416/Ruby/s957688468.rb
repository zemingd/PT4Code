a,b=gets.split
c=0;(a..b).map{|s|c+=s.reverse==s ?1:0}
puts c