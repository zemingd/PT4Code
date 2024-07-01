a = gets.chomp.split(' ').map(&:to_i)

to_float = (a[0] + a[1]) / 2.to_f

puts to_float.ceil