
NN, MM = ARGF.gets.chomp.split.collect {|el| el.to_i}

ans = NN * (NN - 1) / 2
ans += MM * (MM - 1) / 2

puts ans
