n = gets.to_i
sum = 0
1.upto(n) do |a|
  1.upto(n) do |b|
    1.upto(n) do |c|
      sum += a.gcd(b).gcd(c)
    end
  end
end

puts sum