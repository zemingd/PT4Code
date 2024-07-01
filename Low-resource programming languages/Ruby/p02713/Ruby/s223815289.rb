k = gets.chomp.to_i
sum = 0

(1..k).each do |x|
  (1..k).each do |y|
    (1..k).each do |z|
      sum += x.gcd(y).gcd(z)
    end
  end
end

puts sum