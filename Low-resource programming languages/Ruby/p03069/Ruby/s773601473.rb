N = gets.to_i
S = gets.chomp.split('')

puts 0.upto(N-1).map { |i| S[0...i].count('#') + S[i..-1].count('.') }.min
