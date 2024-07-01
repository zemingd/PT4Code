A = $<.map &:to_i
p A.map{|a| a.ceil(-1) }.inject(:+) - A.map{|a| a.ceil(-1) - a }.max