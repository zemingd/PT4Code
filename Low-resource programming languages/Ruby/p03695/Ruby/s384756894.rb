n = gets.to_i
h = gets.split.map(&:to_i)

count = 0

count = count + 1 if h.find{|x| 0<x && x<400}
count = count + 1 if h.find{|x| 399<x && x<800}
count = count + 1 if h.find{|x| 799<x && x<1200}
count = count + 1 if h.find{|x| 1199<x && x<1600}
count = count + 1 if h.find{|x| 1599<x && x<2000}
count = count + 1 if h.find{|x| 1999<x && x<2400}
count = count + 1 if h.find{|x| 2399<x && x<2800}
count = count + 1 if h.find{|x| 2799<x && x<3200}

count_stop = h.count{|x| x>=3200}

min = count
max = count + count_stop
max = 8 if max >= 8

puts min.to_s + " " + max.to_s