n = gets.to_i
arr = n.times.map{gets.chomp}

puts arr.map {|i| i.split('').sort.join }.combination(2).to_a.count {|a, b| a == b }