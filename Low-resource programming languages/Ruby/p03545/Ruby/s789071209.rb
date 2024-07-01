a=gets.split("")
v=['+','-']
v.product(v,v).each{|w|t=a.zip(w).flatten.join;(puts t+"=7";break)if eval(t)==7}