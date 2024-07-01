S = gets.chomp

cnt = S.count('0')

puts 2 * [cnt, S.size - cnt].min
