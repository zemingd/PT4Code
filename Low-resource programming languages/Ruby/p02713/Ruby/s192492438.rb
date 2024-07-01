def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

k = gets.to_i
result = 0
1.upto(k) do |i|
  1.upto(k) do |j|
    1.upto(k) do |l|
      m = gcd(i, j)
      result += gcd(m, l)
    end
  end
end
puts result