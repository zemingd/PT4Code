N, i = gets.split.map(&:to_i)
ans = N == 1 && i == 1 ? 1 : N-i+1
puts ans
