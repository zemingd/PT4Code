n, m, l = gets.split.map(&:to_i)
a = []
b = []
n.times do |i|
  tmp = gets.split.map(&:to_i)
  a[i] =tmp
end
m.times do |j|
  tmp = gets.split.map(&:to_i)
  b[j] = tmp
end

n.times do |i|
  cr = []
  l.times do |k|
    sum = 0
    m.times do |j|
      sum += a[i][j] * b[j][k]
    end
    cr[k] = sum
  end
  puts cr.join(" ")
end

