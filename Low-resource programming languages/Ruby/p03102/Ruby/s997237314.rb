n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
a = []
n.times do
  a << gets.chomp.split.map(&:to_i)
end
count = 0
1.upto(n) do |i|
  sum = c
  1.upto(m) do |j|
    sum += a[i-1][j-1] * b[j-1]
  end
  count += 1 if sum > 0
end
puts count