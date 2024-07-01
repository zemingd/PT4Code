gets
p gets.chomp.chars.each_cons(2).to_a.select{|l,r|l!=r}.size+1