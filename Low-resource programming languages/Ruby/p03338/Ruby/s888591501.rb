l=gets.to_i
s=gets
p (0..l).map{|x|(s[0,x].chars & s[x..-1].chars).size }.max