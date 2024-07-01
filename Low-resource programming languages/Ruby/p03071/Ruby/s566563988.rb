a, b = gets.split.map(&:to_i).sort
p b + [a, b - 1].max