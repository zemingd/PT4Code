a = gets.chomp.to_i

def gcd(a, b)
  a = -a if a < 0
  b = -b if b < 0
  while b > 0
    a, b = b, a % b
  end
  a
end

def ngcd(a,b,c)
  gcd(gcd(a,b),c)
end

sum_6 = 0
if a >= 3
  (1..a).each do |i|
    (i+1..a).each do |j|
      (j+1..a).each do |k|
        sum_6 += ngcd(i,j,k)
      end
    end
  end
end

sum_3 = 0
(1..a).each do |i|
  (i+1..a).each do |j|
    sum_3 += gcd(i,j)
  end
end

sum = (1..a).reduce(:+)

puts sum_6 * 6 + sum_3 * 6 + sum
