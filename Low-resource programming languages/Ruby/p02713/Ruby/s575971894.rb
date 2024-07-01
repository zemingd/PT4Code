K = gets.chomp.to_i

def gcd(a, b)
  a, b = b, a if a < b

  while b > 0
    a, b = b, a % b
  end
  a
end

ans = 0

1.upto(K) do |i|
  1.upto(K) do |j|
    1.upto(K) do |k|
      ans += gcd(gcd(i,j), k)
    end
  end
end

p ans
