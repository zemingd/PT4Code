gets
p gets.chomp.split.map.each_cons(3).select{|a,b,c|x=[a,b,c].sort.uniq; x[1] == b}.size