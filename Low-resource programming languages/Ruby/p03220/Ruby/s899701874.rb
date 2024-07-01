N=gets.to_i
T,A=gets.split.map &:to_f
H=gets.split.map &:to_f
p H.each.with_index.map{|x,i|[(A-T-x*0.006).abs,i+1]}.min[1]
