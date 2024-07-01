N = gets.to_i
s = 0
(1..N).each do |i|
  (1..N).each do |j|
    x = i.gcd(j)
    (1..N).each do |k|
      s += x.gcd(k)
    end
  end
end
puts s
