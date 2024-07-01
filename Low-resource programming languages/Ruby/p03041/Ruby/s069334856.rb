n, k = gets.chomp.split.map {|w| w.to_i}
s = gets.chomp
s[k - 1, 1] = s[k-1, 1].downcase

puts s
