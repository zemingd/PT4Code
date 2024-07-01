k = gets.to_i

sum = 0

1.upto(k) do |i|
  1.upto(k) do |j|
    1.upto(k) do |k|
      g = i.gcd(j)
      sum += g.gcd(k)
    end
  end
end

puts sum
