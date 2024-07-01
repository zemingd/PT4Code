list = gets.chomp.split("\s").map{|x| x.to_i}

list = list.sort()

puts list.join('-') == '5-5-7' ? 'YES' : 'NO'