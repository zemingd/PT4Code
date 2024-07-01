n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
count = 0
n.times do |i|
  sum = 0
  a = gets.chomp.split.map(&:to_i)
  m.times do |j|
    sum += b[j] * a[j]
  end
  if (sum+c > 0) then
    count += 1
  end
end
puts count
