str = gets.chomp

counter = 0
counter += 1 if str[0] == 'o'
counter += 1 if str[1] == 'o'
counter += 1 if str[2] == 'o'

puts 700 + (100 * counter)