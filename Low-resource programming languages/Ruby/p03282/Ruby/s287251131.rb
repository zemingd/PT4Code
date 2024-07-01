s = gets.chomp
k = gets.to_i

idx =  s.chars.index { |c| c != '1' }

puts (idx && k - 1 >= idx) ? s[idx] : 1