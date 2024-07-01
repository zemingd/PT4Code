a = gets.chomp.to_i

sum = 0
(1..a).each do |i|
  (1..a).each do |j|
    (1..a).each do |k|
      sum += i.gcd(j.gcd(k))
    end
  end
end

puts sum
