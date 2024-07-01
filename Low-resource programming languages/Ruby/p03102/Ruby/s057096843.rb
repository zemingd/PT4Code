n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0

n.times do |i|
  a = gets.split.map(&:to_i)
  sum = 0
  m.times do |j|
    sum += a[j] * b[j]
  end
  ans += 1 if sum + c > 0
end

puts ans