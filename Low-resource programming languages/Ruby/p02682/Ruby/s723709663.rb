a, b, c, k = gets.split(" ").map(&:to_i)
count = k
sum = 0
while a > 0 && k > 0
  sum += 1
  a -= 1
  k -= 1
end
while b > 0 && k > 0
  b -= 1
  k -= 1
  end
while c > 0 && k > 0
  sum -= 1
  c -= 1
  k -= 1
end
print sum