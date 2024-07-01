a, p = gets.chomp.split(' ').map(&:to_i)

kakera = ((a * 3 + p) / 2).floor
puts kakera