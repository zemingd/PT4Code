a,b,c = gets.split.map(&:to_i)
puts ((a-b)*(a-c)<0) ? ((b-c<0) ? [b,a,c].join(" ") : [c,a,b].join(" ")) : ((b-c>0) ? [a,c,b].join(" ") : ((a-c>0) ? [b,c,a].join(" ") : [a,b,c].join(" ")))