k = gets.chomp.split(' ').map(&:to_i)[0]
puts (k / 2 + 1) * (k / 2) if k.odd?
puts (k / 2) ** 2 if k.even?