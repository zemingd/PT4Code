a,b=gets.split.map(&:to_i)
p a.upto(b).select{ |i| i.to_s.chars.reverse.join.to_i == i}.size
