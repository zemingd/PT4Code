n, m, l = gets.chomp.split.map(&:to_i)

a = []
n.times do
  a << gets.chomp.split.map(&:to_i)
end

b = []
m.times do
  b << gets.chomp.split.map(&:to_i)
end

c = []

n.times do |i|
  c_i = []
  l.times do |j|
    sum = 0
    m.times do |k|
      sum += a[i][k] * b[k][j]
    end
    c_i.push(sum)
  end
  c.push(c_i)
end

c.each do |c_i|
  puts c_i.join(' ')
end
