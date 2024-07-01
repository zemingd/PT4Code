N = gets.to_i
S = N.times.map{gets.chomp}
O = S.group_by(&:itself).to_a.sort_by{|s| s[1].size }.reverse
max = O.first[1].size
puts O.take_while{|v| v[1].size == max}.map{|v| v[0] }.sort