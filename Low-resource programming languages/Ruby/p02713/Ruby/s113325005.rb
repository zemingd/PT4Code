k = gets.to_i
ans = 0
(1..k).to_a.each do |a|
  (1..k).to_a.each do |b|
    (1..k).to_a.each do |c|
      ans += a.gcd(b.gcd(c))
    end
  end
end
puts ans