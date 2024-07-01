n = gets.chomp.to_i

# 9 ^ i + 6 ^ j + k

ans = n

0.upto(n) do |i|
  x = 0
  a = i
  b = n - i
  while a > 0
    x += a % 6
    a /= 6
  end
  while b > 0
    x += b % 9
    b /= 9
  end
  ans = [ans, x].min
end

puts ans