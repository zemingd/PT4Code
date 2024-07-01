n,l = gets.split.map &:to_i
s = (1..n).map{|i| (i + l -1).abs}
s_index = s.index(s.min)
n = (1..n).map{|i| i + l -1}
n.delete_at(s_index)
p n.inject(:+)