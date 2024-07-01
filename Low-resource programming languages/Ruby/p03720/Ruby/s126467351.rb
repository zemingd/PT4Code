n,m=gets.split.map &:to_i
s=""
m.times{s+=gets}
n.times{|i|puts s.split.map(&:to_i).count(i+1)}
