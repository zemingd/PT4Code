n = gets.to_i
sum = 0
(1..n).each do |a|
  (1..n).each do |b|
    (1..n).each do |c|
      sum += a.gcd(b).gcd(c)
    end
  end
end
puts sum