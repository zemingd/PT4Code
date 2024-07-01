a, b = gets.chomp.split(' ').map(&:to_i)

num = a + b
puts num.even? ? (a + b) / 2 : 'IMPOSSIBLE'