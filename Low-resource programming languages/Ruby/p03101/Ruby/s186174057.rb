a, b = gets.chomp.split(' ').map(&:to_i)
c, d = gets.chomp.split(' ').map(&:to_i)
puts (a-c) * (b-d)