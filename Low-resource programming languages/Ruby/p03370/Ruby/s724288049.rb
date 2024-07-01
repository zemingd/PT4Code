N, X = gets.split.map(&:to_i)
M = readlines.map(&:chomp).map(&:to_i)

count_a = M.inject(:+)
minimum = M.min
rem = X - count_a
count_b = (rem + 1) / minimum
ans = count_b + M.length
p ans