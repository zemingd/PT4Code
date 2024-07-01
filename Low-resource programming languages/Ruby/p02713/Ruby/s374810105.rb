n = gets.chomp.to_i
h = Hash.new(0)
(1..n).each do |i|
  (1..n).each do |j|
    h[i.gcd(j)] += 1
  end
end
s = 0
(1..n).each do |i|
  (1..n).each do |j|
    s += i.gcd(j) * h[j]
  end
end
puts s