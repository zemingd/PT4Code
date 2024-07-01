n,k = gets.split.map &:to_i
l = gets.split*""
p n.upto(10*n).select{|i|!(i.to_s.match(/[#{l}]/))}.min