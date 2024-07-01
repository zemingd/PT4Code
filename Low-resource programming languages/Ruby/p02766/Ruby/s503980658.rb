n, k = gets.split.map(&:to_i)

m = 0

while n > 0
  n /= k
  m += 1
end

puts m
