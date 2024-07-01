n,m = gets.chomp.split(" ").map(&:to_i)

arr = n.times.map{gets.chomp.split(" ").map(&:to_i)[1..-1]}

puts arr.flatten.group_by{|a| a}.count{|k,v|v.length == n}

