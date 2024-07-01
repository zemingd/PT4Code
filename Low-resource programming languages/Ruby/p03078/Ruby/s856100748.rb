x,y,z,k=gets.split.map(&:to_i)
a=3.times.map{gets.split.map(&:to_i)}
b=[]
a[0].each{|v|a[1].each{|w|b << v+w}}
c=b.sort.reverse.take(k)
d=[]
a[2].each{|v|c.each{|w|d << v+w}}

puts d.sort.reverse.take(k)