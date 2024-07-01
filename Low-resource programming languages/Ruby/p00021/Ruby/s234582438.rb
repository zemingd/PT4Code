gets.to_i.times{a,b,c,d,e,f,g,h=gets.split.map &:to_f
i=(b-d)*(e-g)
j=(f-h)*(a-c)
puts ((i-j).abs<=1e-10||(i-j).abs<=1e-10*[i,j].max.abs)?"YES":"NO"}