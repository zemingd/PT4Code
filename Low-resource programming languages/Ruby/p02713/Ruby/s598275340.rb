# frozen_string_literal: true

k = gets.to_i
sum = 0
(1..k).each do |a|
  (1..k).each do |b|
    (1..k).each do |c|
      sum += a.gcd(b).gcd(c)
    end
  end
end

puts sum
