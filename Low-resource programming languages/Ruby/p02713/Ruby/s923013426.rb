k = gets.to_i

res = 0
1.step(k) do |a|
  1.step(k) do |b|
    1.step(k) do |c|
      res += (a.gcd(b)).gcd(c)
    end
  end
end

puts res