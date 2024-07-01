a=0
gets.split.map(&:to_i).each_cons(3){|x,y,z|a+=1if[x,y,z].sort[1]==y}
p a