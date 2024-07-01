n = gets.to_i
problems = gets.split.map(&:to_i)

p = problems.sort

puts p[n / 2] - p[n / 2 - 1]