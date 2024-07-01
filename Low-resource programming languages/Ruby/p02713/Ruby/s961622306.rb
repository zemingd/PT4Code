k = gets.to_i
ans = 0
(1..k).each do |a|
  (1..k).each do |b|
    gcd_ab = a.gcd(b)
    (1..k).each do |c|
      ans += gcd_ab.gcd(c)
    end
  end
end
puts ans
