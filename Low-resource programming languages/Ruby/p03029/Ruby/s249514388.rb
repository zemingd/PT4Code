a, p = gets.chomp.split(' ').map {|n| n.to_i}

p_total = p + a * 3

apple_pi = (p_total / 2).floor

puts apple_pi
