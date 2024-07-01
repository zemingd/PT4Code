$S = gets.chomp.split('')

puts 700 + $S.count { |t| t == 'o' } * 100
