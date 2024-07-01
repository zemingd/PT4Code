n,k = gets.strip.split(' ').map(&:to_i)
a = 1
while n >= k
  a += 1
  n /= k
end
puts a