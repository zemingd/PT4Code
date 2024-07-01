a,b=gets.split.map(&:to_i).map{|v|v==2 ? 0 : v < 8 ? v + 1 : v}
d=a^b
puts (a*b==0 ? d : d[0])==0 ? :Yes : :No
