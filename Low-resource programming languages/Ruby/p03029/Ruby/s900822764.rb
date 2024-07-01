apple, apple_piece = gets.chomp.split(' ').map(&:to_i)

apple_piece += apple*3
apple_pi = apple_piece / 2

puts apple_pi