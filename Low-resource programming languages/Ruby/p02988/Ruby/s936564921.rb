n=gets.to_i
p=gets.split.map(&:to_i)
puts p.each_cons(3).select{|x,y,z| [x,y,z].sort[1] == y}.size