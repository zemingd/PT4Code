cs = 2.times.map {gets.chomp}
puts (cs[0][0] == cs[1][2] && cs[0][1] == cs[1][1] && cs[0][2] == cs[1][0]) ? 'YES' : 'NO'