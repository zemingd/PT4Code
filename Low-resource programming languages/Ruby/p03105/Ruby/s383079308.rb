a, b, c = gets.chomp.split(' ').map(&:to_i)

d = b / a
puts c <= d ? c : d
