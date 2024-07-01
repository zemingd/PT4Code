a = gets.chomp.to_i

def gcd(a, b)
  a, b = b, a%b while b > 0
  a
end

def ngcd(a, b, c)
  gcd(gcd(a, b), c)
end

sum = 0
(1..a).each do |i|
  (1..a).each do |j|
    (1..a).each do |k|
      sum += ngcd(i, j, k)
    end
  end
end

puts sum
