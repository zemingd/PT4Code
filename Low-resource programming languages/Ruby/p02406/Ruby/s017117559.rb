(1..gets.to_i).each {|i| print (i%3)==0 ? " #{i}" : (i%10)==3 ? " #{i}" : ""}