k = gets.to_i
sum = 0

(1..k).each do |i|
  (1..k).each do |j|
    (1..k).each do |k|
      sum += i.gcd(j).gcd(k)
    end
  end
end

puts sum