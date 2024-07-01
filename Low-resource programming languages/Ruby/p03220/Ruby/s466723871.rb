n=gets.to_i
t,a=gets.split.map &:to_i
h=gets.split.map &:to_i

h.map!{|x|x=t-x*0.006}
p h.index(h.min_by{|e|(a-e).abs})+1