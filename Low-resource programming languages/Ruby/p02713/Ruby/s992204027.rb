k = gets.to_i
total = 0

(1..k).each do |h|
  (1..k).each do |i|
    t = h.gcd(i)
    (1..k).each do |j|
      total += t.gcd(j)
    end
  end
end

puts total