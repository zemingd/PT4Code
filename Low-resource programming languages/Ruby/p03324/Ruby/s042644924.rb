d, n = gets.split(" ").map(&:to_i)

ans = 100 ** d * n
if n == 100
  ans = 100 ** d * n + 1
else
  ans = 100 ** d * n
end
puts ans
