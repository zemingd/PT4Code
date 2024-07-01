n = gets.to_i

ans = 0
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      ans += i.gcd(j).gcd(k)
    end
  end
end

puts ans
