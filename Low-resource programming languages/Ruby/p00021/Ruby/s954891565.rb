gets.to_i.times{l=gets.split.map(&:to_f)
puts ((l[0]-l[2])/(l[1]-l[3])==(l[4]-l[6])/(l[5]-l[7]))?"YES":"NO"}