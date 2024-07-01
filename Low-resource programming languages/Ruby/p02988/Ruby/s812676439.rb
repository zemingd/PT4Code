gets
p gets.chomp.split.map.each_cons(3).select{|a,b,c|x=[a,b,c].sort; x[1] == b && x[0]<x[1]}.size