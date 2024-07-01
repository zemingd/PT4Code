a, b,= gets.split.map(&:to_i)
puts [a / b, a % b, a * 1.0 / b].join ' '