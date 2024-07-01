_,b,c=`dd`.split
c.each_char.with_index{|s,i|print i==~-b ?s.downcase : s}
