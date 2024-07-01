n = gets.strip.to_i
total = 0
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      total += i.gcd(j).gcd(k)
    end
  end
end
puts total