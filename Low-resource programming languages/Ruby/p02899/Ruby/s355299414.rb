N = gets.chomp.to_i
# N, K = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

A = gets.chomp.split.map(&:to_i)
A_with_index = A.map.with_index { |a, i| [a, i] }

sorted = A_with_index.sort_by { |(a, i)| a }

# p N
# p A
# p sorted

print sorted.map { |(order, i)| i + 1 }.join(" ") + "\n"