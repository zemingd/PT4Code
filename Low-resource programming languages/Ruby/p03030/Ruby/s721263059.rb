a = gets.to_i
array = []
a.times {|i| array << gets.chomp.split(" ").push(i + 1)}
array.sort! {|a, b| (a[0] <=> b[0]).nonzero? || b[1] <=> a[1]}
array.each {|a| puts a[2]}