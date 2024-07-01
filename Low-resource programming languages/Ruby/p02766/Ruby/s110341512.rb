n, k = gets.split.map(&:to_i)
result = 0
while n >= k
  n /= k
  result += 1
end
puts result + 1