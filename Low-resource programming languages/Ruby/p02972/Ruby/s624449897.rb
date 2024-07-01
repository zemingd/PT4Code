n = gets.to_i
a = gets.split.map(&:to_i)

(1..n).each do |i|
  t = 0
  (1..n/i).each do |j|
    t ^= a[i*j-1]
  end
  if t != a[i-1]
    a[i-1] ^= 1
  end
end
p a.count(1)
(1..n).each do |i|
  p i if a[i-1] == 1
end