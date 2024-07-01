N = gets.to_i
sum = 0
i, j, k = 1, 1, 1
(1..N).each do |i|
  (1..N).each do |j|
    (1..N).each do |k|
      sum += i.gcd(j).gcd(k)
    end
  end
end
puts sum