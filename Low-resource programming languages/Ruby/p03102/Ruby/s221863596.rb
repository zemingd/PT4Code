_, _, c=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
a=$<.map{|m|m.split.map(&:to_i)}
p a.select {|m| [b,m].transpose.map{|m| m[0]*m[1]}.inject(:+) + c > 0 }.size