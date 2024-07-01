n = gets.to_i
w = gets.split.map(&:to_i)
ans = 10**4 + 1

(1..n).each do |t|
  s1 = 0
  s2 = 0
  (1..n).each do |j|
    s1 += w[j-1] if j-1 < t
    s2 += w[j-1] if j-1 >= t
  end
  ans = (s1 - s2).abs if (s1 - s2).abs < ans
end

puts ans
