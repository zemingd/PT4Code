g=proc{gets.split.map &:to_i}
N=gets.to_i
T,A=g.call
H=g.call
p (1..N).min_by{|x|(A-T+H[x-1]*0.006).abs}