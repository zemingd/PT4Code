n, k = gets.split(" ").map(&:to_i)
c = 1
until n < k
  n /= k
  c += 1
end

print(c)