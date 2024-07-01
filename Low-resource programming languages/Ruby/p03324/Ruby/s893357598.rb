d, n = gets.chomp.split.map(&:to_i)
if n == 100
  result = 100 ** d * (n + 1)
else
  result = 100 ** d * n
end
puts result
