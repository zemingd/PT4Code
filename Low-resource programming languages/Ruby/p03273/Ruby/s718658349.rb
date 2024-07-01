h,w=gets.split.map(&:to_i);a=[]
h.times{|i|a.push(gets.split(''))}
a.transpose.select{|b|b.include?('#')}
.transpose.select{|b|b.include?('#')}.each{|b|puts b.join}