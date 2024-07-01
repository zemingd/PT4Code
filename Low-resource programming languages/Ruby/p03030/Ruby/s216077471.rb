N = gets.to_i
puts N.times.map{ gets.split }.map{|name,score| [name, score.to_i] }.map.with_index{|a,i| [a,i+1].flatten}.sort{|a,b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1]) }.map{|a,b,c| c}

