h, a = gets.chomp.split(' ').map(&:to_a)
c = h / a
c += 1 if h % a != 0
puts c