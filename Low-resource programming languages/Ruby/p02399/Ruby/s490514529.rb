a,b = gets.split(' ').collect{|n|n.to_f}

d = (a/b).to_i
r = (a%b).to_i
f = a/b
puts [d,r,f].join(' ')