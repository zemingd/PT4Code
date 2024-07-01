P, Q, R = gets.chomp.split(' ').map(&:to_i)

patterns = [P, Q, R].combination(2).map { |c| c.reduce(0, &:+) }
puts patterns.min
