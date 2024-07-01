h = 5.times.map{gets.split.map(&:to_i)}
last = h.sort {|a,b| a[0]%10 <=> b[0]%10}.select{|i| i[0]%10 != 0}[0][0]
ans = -(last.ceil(-1)) + last
h.each{|i| ans += (i[0]).ceil(-1)}
p ans