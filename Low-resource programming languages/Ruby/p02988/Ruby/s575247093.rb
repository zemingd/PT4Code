gets;a=0
gets.split.map(&:to_i).each_cons(3){|_|a+=1 if _.sort[1]==_[1]}
p a