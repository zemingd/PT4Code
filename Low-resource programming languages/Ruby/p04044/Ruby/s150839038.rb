n, _l = gets.chomp.split(' ').map(&:to_i)
list = n.times.map { gets.chomp }

s = list.sort.join
puts s
