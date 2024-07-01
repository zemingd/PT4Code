_,m=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i)
puts ary.select{|a|ary.sum/(4*m)<=a}.size>=m ? 'Yes' : 'No'