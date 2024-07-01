input = readlines()

h, n = input.shift.chomp.split("\s").map{|x| x.to_i}
list = input.shift.chomp.split("\s").map{|x| x.to_i}

puts list.sum >= h ? 'Yes' : 'No'