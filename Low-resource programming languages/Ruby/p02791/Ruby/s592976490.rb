n = gets.to_i
p = gets.split.map(&:to_i)
min = 2 * (10 ** 5)
count = 0
n.times do |i|
  count += 1 if min >= p[i]
  min = p[i] if min > p[i]
end
puts count