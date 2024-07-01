n, m, c = gets.strip.split(" ").map(&:to_i)
b = gets.strip.split.map(&:to_i)
data = n.times.map { gets.strip.split.map(&:to_i) }

ans = 0
(0..n-1).each do |i|
  tmp = 0
  (0..m-1).each do |j|
    tmp += data[i][j] * b[j]
  end
  tmp += c
  ans += 1 if tmp > 0
end

puts ans