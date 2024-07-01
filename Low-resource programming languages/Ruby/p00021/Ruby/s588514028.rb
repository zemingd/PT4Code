gets.to_i.times{a,b,c,d,e,f,g,h=gets.split.map &:to_f
i=(b-d)/(a-c)
puts ((i-((f-h)/(e-g))).abs<=Float::EPSILON*i.abs)?"YES":"NO"}