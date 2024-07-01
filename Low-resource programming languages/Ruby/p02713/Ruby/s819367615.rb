# frozen_string_literal: true

k = gets.to_i
sum = 0

1.upto(k) do |a|
  1.upto(k) do |b|
    1.upto(k) do |c|
      sum += [a, b, c].inject { |x, y| x.gcd(y) }
    end
  end
end

puts sum