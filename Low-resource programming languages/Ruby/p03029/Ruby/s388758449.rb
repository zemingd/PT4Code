A, P = gets.split.map(&:to_i)
pieces = (A * 3) + P
pie = (pieces / 3).floor
puts(pie)