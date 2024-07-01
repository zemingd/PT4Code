n = gets.to_i
w = gets.split.map(&:to_i)
ans = 10**4 + 1

(0..100).each do |t|
  s1 = 0
  s2 = 0
  n.times do |j|
    s1 += t - w[j] if w[j] < t
    s2 += w[j] - t if w[j] >= t
  end
  ans = (s1 - s2).abs if (s1 - s2).abs < ans
end

puts ans
