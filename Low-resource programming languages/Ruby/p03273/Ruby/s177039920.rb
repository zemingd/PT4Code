h,w=gets.split.map(&:to_i);a=[]
h.times{|i|a.push(gets.split(''))}
->(b){2.times{b=b.transpose.select{|c|c.include?('#')}};b}.(a)
.each{|b|puts b.join}