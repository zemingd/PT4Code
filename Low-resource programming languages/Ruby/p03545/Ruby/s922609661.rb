a=gets.split("")
v=['+','-']
v.product(v,v,['']).each{|w|t=a.zip(w).flatten.join;(puts t+"=7";exit)if eval(t)==7}