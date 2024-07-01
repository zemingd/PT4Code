n, m = gets.split.map(&:to_i)
a = m.times.map{gets.split.map(&:to_i)}.flatten.group_by{|x|x}.map{|k,v| [k,v.size]}.to_h
puts (1..n).map{|i| a.fetch(i, 0)}