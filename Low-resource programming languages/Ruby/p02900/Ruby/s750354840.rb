A,B = gets.split.map(&:to_i)

ans = 1
n = A.gcd(B)
i = 2
while i*i <= n
  if n % i == 0
    n /= i while n % i == 0
    ans += 1
  end
  i += 1
end
ans += 1 if n != 1
puts ans