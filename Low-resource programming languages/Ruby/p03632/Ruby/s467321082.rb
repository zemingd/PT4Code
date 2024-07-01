a,b,c,d=gets.split.map &:to_i
p [[a+b,c+d].min-[a,c].max,0].max