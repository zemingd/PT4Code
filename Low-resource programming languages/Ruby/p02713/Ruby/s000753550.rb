require 'prime'

k = gets.to_i

sum = 0

1.upto(k) do |i1|
  1.upto(k) do |i2|
    1.upto(k) do |i3|
      sum += i1.gcd(i2).gcd(i3)
    end
  end
end

puts sum