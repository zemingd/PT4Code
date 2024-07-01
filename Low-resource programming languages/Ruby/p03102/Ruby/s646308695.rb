n, _m, c = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

count = 0
n.times do
  a = gets.strip.split.map(&:to_i)
  sum = 0
  a.size.times do |j|
    sum += a[j] * b[j]
  end
  count += 1 if sum + c > 0
end

puts count