input = gets.to_i
sum = 0
(1..input).each do |first|
  (1..input).each do |second|
    (1..input).each do |third|
      sum += first.gcd(second.gcd(third))
    end
  end
end

puts sum