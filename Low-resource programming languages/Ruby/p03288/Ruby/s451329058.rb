r = gets.to_i
c = ["B", "R", "G"]
puts "A" + c[[1200, 2800, 4209].bsearch_index {|x| x > r }] + "C"