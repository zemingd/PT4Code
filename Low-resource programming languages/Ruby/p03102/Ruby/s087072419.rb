n,m,c = gets.chomp.split().map(&:to_i)
b = gets.chomp.split().map(&:to_i)
a = []
n.times do
  a.push gets.chomp.split().map(&:to_i)
end

ans = 0
n.times do |i|
  sum = 0
  m.times do |j|
    sum += a[i][j] * b[j]
  end
  if sum + c > 0
    ans += 1
  end
end

puts ans