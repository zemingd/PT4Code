N=gets.to_i
a=[]
5.times{ a << gets.to_i}
a.sort!
puts (N.to_f/a[0]).ceil+4
