k = gets.to_i

ans = 0
(1..k).each do |x|
  (1..k).each do |y|
    (1..k).each do |z|
      ans += (x).gcd(y).gcd(z)
    end
  end
end
puts ans
