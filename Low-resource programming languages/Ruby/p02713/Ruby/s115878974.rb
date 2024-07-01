n = gets.chomp.to_i

def gcd3(a,b,c)
  d = a.gcd(b)
  d.gcd(c)
end

result1 = 0
result2 = 0
(1..n).each do |i|
  result1 += gcd3(i,i,i)
end

(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      next if (i == j && j == k)
      result2 += gcd3(i,j,k)
    end
  end
end

puts result1 + result2