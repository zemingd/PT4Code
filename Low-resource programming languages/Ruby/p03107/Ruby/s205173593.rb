S = readline.chomp
n0 = S.each_char.count {|c| c == '0' }
n1 = S.size - n0
puts S.size - (n1-n0).abs
