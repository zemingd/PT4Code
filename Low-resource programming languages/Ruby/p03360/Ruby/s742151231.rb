A, B, C = gets.split.map(&:to_i)
K = gets.to_i
max = [A, B, C].max
sum = A + B + C - max
sum += max * (2 ** K)
puts sum
