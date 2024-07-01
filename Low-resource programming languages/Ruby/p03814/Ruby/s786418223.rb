l = gets.chomp
tmp = l[l.index('A'), l.length].reverse
puts tmp[tmp.index('Z'), tmp.length].reverse.length
