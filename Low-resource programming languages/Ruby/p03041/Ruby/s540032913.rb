_,b,c=`dd`.split
c.char.with_index{|s,i|print i==~-c ?s.downcase:s}