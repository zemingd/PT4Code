a, b = STDIN.gets.chomp.split(' ').map(&:to_i)
puts [ a / b, a % b, "%.8f" % (a / b.to_f) ].join(' ')