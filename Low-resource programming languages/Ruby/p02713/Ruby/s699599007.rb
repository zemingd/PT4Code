k = gets.to_i
sum = 0

1.upto(k) do |a|
  1.upto(k) do |b|
    1.upto(k) do |c|
      sum += a.gcd(b).gcd(c)
    end
  end
end
p sum
