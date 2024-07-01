x = gets.to_i
e = (1..x).select{|n| n.even?}.count
o = (1..x).select{|n| n.odd?}.count
p e * o