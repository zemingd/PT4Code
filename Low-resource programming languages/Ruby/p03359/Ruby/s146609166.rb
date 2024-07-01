N, M = gets.chomp.split.map(&:to_i)

if N <= M
  puts N
else
  puts N-1
end
