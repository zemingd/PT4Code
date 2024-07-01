n,k = gets.split.map(&:to_i)
i = 1
while n >= k
  n /= k
  i += 1
end
puts i