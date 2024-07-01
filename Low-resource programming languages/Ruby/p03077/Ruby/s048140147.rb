io = STDIN
n=io.gets.to_i
t=[]
5.times{ t<<io.gets.to_i}
puts (n.to_f/t.min).ceil + 4
