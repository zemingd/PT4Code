gets.to_i.times{l=gets.split.map(&:to_f)
a=(l[0]-l[2])/(l[1]-l[3])
b=(l[4]-l[6])/(l[5]-l[7])
puts (a==b)?"YES":"NO"}