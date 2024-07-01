a,b,c=gets.to_i,readlines.map{|d|d.chomp},"No";puts c;exit if b!=b.uniq
b.each_with_index{|d,i|if !(b[i+1].nil?) && d[-1]!=b[i+1][0] then;puts c;exit;end};puts "Yes"