N, M = gets.split.map(&:to_i)
tmp = N * M / 2
if (tmp % 2 == 0)
  puts tmp
else
  puts tmp + 1
end
