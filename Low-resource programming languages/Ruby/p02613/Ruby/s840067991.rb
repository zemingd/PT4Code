W=%w!AC WA TLE RE!
n=[0]*4
gets.to_i.times{n[W.index(gets.chop)]+=1}
puts W.zip(n).map{|w,i|"#{w} x #{i}"}