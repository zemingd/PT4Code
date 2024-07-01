#require "pry-byebug"
N,M=gets.split.map(&:to_i)

total = 0

if 1 < N
  total += N * (N - 1) / 2
end
if 1 < M
  total += M * (M - 1) / 2
end
puts total
