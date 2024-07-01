n, a, b = gets.chomp.split(' ').map(&:to_f)

result = [a * n, b].min
puts result.to_i