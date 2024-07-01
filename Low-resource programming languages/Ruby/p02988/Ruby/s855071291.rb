a=0
gets.split.map &:to_i.each_cons(3){|a,b,c|a+=1 if [a,b,c].sort[1]==b}
p a