io = STDIN
a,b,c=io.gets.split.map(&:to_i)
k=io.gets.to_i

max=[a,b,c].max
remain=[a,b,c]-[max]
x,y=remain
puts x+y+2*max*k
