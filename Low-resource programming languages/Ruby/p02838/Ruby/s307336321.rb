n = gets.to_i
a = Array.new(60, 0)
b = gets.split.map(&:to_i)
n.times do |i|
  60.times do |j|
    a[j] += b[i][j]
  end
end
sum = 0
60.times do |i|
  sum += a[i] * (n - a[i]) * 2 ** i
  sum %= 1_000_000_007
end
puts sum